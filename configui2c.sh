
#export all gpio pins
 echo 28 > /sys/class/gpio/export 
 echo 27 > /sys/class/gpio/export 
 echo 204 > /sys/class/gpio/export 
 echo 205 > /sys/class/gpio/export 
 echo 236 > /sys/class/gpio/export 
 echo 237 > /sys/class/gpio/export 
 echo 14 > /sys/class/gpio/export 
 echo 165 > /sys/class/gpio/export 
 echo 212 > /sys/class/gpio/export 
 echo 213 > /sys/class/gpio/export 
 echo 214 > /sys/class/gpio/export 

#TRISTATE_ALL gpio pins
 echo low > /sys/class/gpio/gpio214/direction 

#Setup Arduino MUX for gpio/i2c VS ADC
 echo low > /sys/class/gpio/gpio204/direction 
 echo low > /sys/class/gpio/gpio205/direction 

#setup gpio pins for alternate gpio pins to input
 echo low > /sys/class/gpio/gpio14/direction 
 echo low > /sys/class/gpio/gpio165/direction

#setup in/out buffer as in for gpio, so that I2C signal can drive the common lines 
 echo low > /sys/class/gpio/gpio236/direction 
 echo low > /sys/class/gpio/gpio237/direction 

#Enable pullup resistors for bot SCL & SDA lines
 echo in > /sys/class/gpio/gpio212/direction 
 echo in > /sys/class/gpio/gpio213/direction 

#Setup pinmux for SOC mux of I2C vs GPIO to mode1
 echo mode1 > /sys/kernel/debug/gpio_debug/gpio28/current_pinmux 
 echo mode1 > /sys/kernel/debug/gpio_debug/gpio27/current_pinmux 

#setup remove tristate
 echo high > /sys/class/gpio/gpio214/direction


