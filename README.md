Overview
=============

The iot_bridge provides a  bridge between the Robot Operating System - ROS and the OpenHAB Home-Automation system. 

* ROS is an extremely powerful open source set of libraries and tools that help you build robot applications - providing drivers and state-of-the-art algorithms for vision, movement, etc.
[ros.org](http://www.ros.org/)

* OpenHAB is an open source system that connects to virtually any intelligent device, such as smoke detectors, motion detectors, temperature sensors, security systems, TV/audio, fingerprint scanners, lighting, 1-Wire, Wemo, CUPS, DMX, KNX, openpaths, Bluetooth, MQTT, Z-Wave, telephony, Insteon, weather sensors, and web services such as Twitter, etc. ROS also provides a basic Web GUI and Iphone/Android app for setting and dynamically viewing values.
[openhab.org/features](http://www.openhab.org/features-tech.html)

Combine the two and you have an incredibly powerful system.

## Give your robot knowledge of the wider world
Use Cases:

* A motion detector in OpenHAB triggers and ROS dispatches the robot to the location.
* ROS facial recognition recognizes a face at the door and OpenHAB unlocks the door.
* A Washing Machine indicates to OpenHAB that the load is complete and ROS dispatches a robot to move the laundry to the dryer.
* OpenHAB MQTT binding indicates that Sarah will be home soon and a sensor indicates that the  temperature is hot.  ROS dispatches the robot to bring Sarah's favorite beer.  OpenHAB turns on her favorite rock music and lowers the house temperature.
* A user clicks on the OpenHAB GUI on an IPAD and selects a new room location for the robot. The message is forwarded by the iot_bridge to ROS and ROS dispatches the robot.

With the iot_bridge, any OpenHAB device can be easily setup to publish updates to the openhab_updates topic in ROS, giving a ROS robot knowledge of any Home Automation device. ROS can publish to the openhab_set topic (or openhab_command) and the device in OpenHAB will be set to the new value (or act on the specified command).

## Release History
v0.1 - Initial Release

v0.8 - Renamed openhab_bridge to iot_bridge.  *NOTE:* the ROS topic names changed from openhab_* to iot_*.  Changed from long polling to regular polling.  This significantly improves reliabilty without much performance cost.

## For more information

[ros.org/openhabbridge](http://wiki.ros.org/openhab_bridge)
