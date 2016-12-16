#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "xiicps.h"
#include "xgpiops.h"

#define IIC_1 XPAR_XIICPS_1_DEVICE_ID
#define IIC_SCLK_RATE 400000

typedef u8 AddressType;

/*MAG Addresses (add 1 to read)*/
#define MAG_ADDR0 0x38
#define MAG_ADDR1 0x3C
#define READ 0x80
#define MAG_WHOAMI 0x0F


XGpioPs Gpio; /* PS GPIO (buttons, LED, etc..) */
XIicPs Mag_Instance; /* The instance of the IIC device. */

int main()
{
    init_platform();

    XGpioPs_Config * ConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
    XGpioPs_SetDirectionPin(&Gpio, 7, 1);

    XIicPs_Config *IicConfigPtr;
    int Status;
    // Look up Zynq-specific IIC device configuration
	IicConfigPtr = XIicPs_LookupConfig(IIC_1);
	// Initialize said device-specific iic configuration so the driver is ready for use
	Status = XIicPs_CfgInitialize(&Mag_Instance, IicConfigPtr, IicConfigPtr->BaseAddress);
	// Run a self test to make sure the driver works (will return XST_SUCCESS if working)
	Status = XIicPs_SelfTest(&Mag_Instance);
	// Set iic SCLK rate (bus now ready for use)
	XIicPs_SetSClk(&Mag_Instance, IIC_SCLK_RATE);

	u8 WriteBuffer[2];
	WriteBuffer[0] = (u8) (0x6B);
	WriteBuffer[1] = (u8) (0x0F);

	XIicPs_MasterRecvPolled(&Mag_Instance, &WriteBuffer[1], 2, 0x6B);

    cleanup_platform();
    return 0;
}
