@echo off
cd /D C:\Users\kirik\OneDrive\Documenten\PlatformIO\Projects\200808-113956-espidf-hello-world\.pio\build\esp32dev || (set FAIL_LINE=2& goto :ABORT)
python C:/Users/kirik/.platformio/packages/framework-espidf/tools/kconfig_new/confgen.py --kconfig C:/Users/kirik/.platformio/packages/framework-espidf/Kconfig --sdkconfig-rename C:/Users/kirik/.platformio/packages/framework-espidf/sdkconfig.rename --config C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/sdkconfig --env-file C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/.pio/build/esp32dev/config.env --env IDF_TARGET=esp32 --dont-write-deprecated --output config C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/sdkconfig || (set FAIL_LINE=3& goto :ABORT)
C:\Users\kirik\.platformio\packages\tool-cmake\bin\cmake.exe -E env "COMPONENT_KCONFIGS=C:/Users/kirik/.platformio/packages/framework-espidf/components/app_trace/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/bt/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/driver/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/efuse/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp-tls/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp32/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_adc_cal/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_common/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_eth/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_event/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_gdbstub/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_http_client/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_http_server/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_https_ota/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_https_server/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/esp_wifi/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/espcoredump/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/fatfs/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/freemodbus/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/freertos/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/heap/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/libsodium/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/log/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/lwip/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/mbedtls/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/mdns/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/mqtt/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/newlib/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/nvs_flash/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/openssl/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/pthread/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/spi_flash/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/spiffs/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/tcpip_adapter/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/unity/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/vfs/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/wear_levelling/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/wifi_provisioning/Kconfig C:/Users/kirik/.platformio/packages/framework-espidf/components/wpa_supplicant/Kconfig" "COMPONENT_KCONFIGS_PROJBUILD=C:/Users/kirik/.platformio/packages/framework-espidf/components/app_update/Kconfig.projbuild C:/Users/kirik/.platformio/packages/framework-espidf/components/bootloader/Kconfig.projbuild C:/Users/kirik/.platformio/packages/framework-espidf/components/esptool_py/Kconfig.projbuild C:/Users/kirik/.platformio/packages/framework-espidf/components/partition_table/Kconfig.projbuild" IDF_CMAKE=y KCONFIG_CONFIG=C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/sdkconfig IDF_TARGET=esp32 C:/Users/kirik/.platformio/packages/tool-mconf/mconf-idf.exe C:/Users/kirik/.platformio/packages/framework-espidf/Kconfig || (set FAIL_LINE=4& goto :ABORT)
python C:/Users/kirik/.platformio/packages/framework-espidf/tools/kconfig_new/confgen.py --kconfig C:/Users/kirik/.platformio/packages/framework-espidf/Kconfig --sdkconfig-rename C:/Users/kirik/.platformio/packages/framework-espidf/sdkconfig.rename --config C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/sdkconfig --env-file C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/.pio/build/esp32dev/config.env --env IDF_TARGET=esp32 --output config C:/Users/kirik/OneDrive/Documenten/PlatformIO/Projects/200808-113956-espidf-hello-world/sdkconfig || (set FAIL_LINE=5& goto :ABORT)
goto :EOF

:ABORT
set ERROR_CODE=%ERRORLEVEL%
echo Batch file failed at line %FAIL_LINE% with errorcode %ERRORLEVEL%
exit /b %ERROR_CODE%