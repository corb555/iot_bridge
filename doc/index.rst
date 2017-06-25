=================================================
Give your robot knowledge of the wider world
=================================================

Overview
=============

The `iot_bridge <http://wiki.ros.org/iot_bridge>`_ package provides a bridge between `ROS` (Robot Operating System) and smart device management systems.
As of June 2017, the package provides bridging with `openHAB`, one of the most actively developed and used framework for home automation.

* `ROS` is an extremely powerful open source set of libraries and tools that help you build robot applications - providing drivers and state-of-the-art algorithms for vision, movement, etc. See the official website `ros.org <http://www.ros.org/>`_ for more info.

* `openHAB` is an open source system that connects to virtually any intelligent device, such as smoke detectors, motion detectors, temperature sensors, `Amazon Alexa`, security systems, TV/audio, `Chromecast`, fingerprint scanners, lighting, `1-Wire`, `Wemo`, `CUPS`, `DMX`, `KNX`, openpaths, `Bluetooth`, `MQTT`, `Z-Wave`, telephony, `Insteon`, weather sensors, and web services such as `Twitter`, etc. `openHAB` also provides a basic Web GUI and `iPhone` / `Android` app for setting and dynamically viewing values. See the official website `openhab.org/features <http://www.openhab.org>`_ for more info.

Combine the two and you have an incredibly powerful system.

Use Cases
=============

* A motion detector in openHAB triggers and ROS dispatches the robot to the location to provide a video feed.
* ROS facial recognition recognizes a face at the door and openHAB unlocks the door.
* A Washing Machine indicates to openHAB that the load is complete and ROS dispatches a robot to move the laundry to the dryer.
* A user gives a voice smart home command to Alexa.  Using the openHAB/Amazon Alexa integration this is forwarded to ROS via the iot_bridge.
* openHAB MQTT binding indicates that Sarah is approaching home and an openHAB sensor indicates that the  temperature is hot.  ROS dispatches the robot to bring Sarah's favorite beer.  openHAB turns on her favorite rock music and lowers the house temperature.
* A user clicks on the openHAB GUI on an IPAD and selects a new room location for the robot. The message is forwarded by the iot_bridge to ROS and ROS dispatches the robot.

With the iot_bridge, any openHAB device (essentially any IoT device) can be easily setup to publish updates to the iot_updates topic in ROS, giving a ROS robot knowledge of any Home Automation device. ROS can publish to the openhab_set topic (or openhab_command) and the device in openHAB will be set to the new value (or act on the specified command).

System Design
=============

`iot_bridge` provides a server that bridges between ROS network and IoT network. The server listens to the 1) status update, or the result of the commands from IoT world 2) commands that robots in the ROS network want to send to IoT network. Robots operate and get information from the bridge via `ROS Topic <http://wiki.ros.org/Topics>`_.

Usage
======

Run the bridge server.

::

   roslaunch iot_bridge iot_bridge.launch

With the server running, a few topics become available::

  /iot_command
  /iot_set
  /iot_updates

Listen to the update from IoT network
------------------------------------------------   

::
   
  rostopic echo iot_command

TBD format of the topic 
   
Send commands to IoT network
------------------------------------------------   

TBD

Release History
=================================================

See changelogs per distro:

* ROS `Kinetic <http://docs.ros.org/kinetic/changelogs/iot_bridge/changelog.html>`_
* ROS `Lunar <http://docs.ros.org/lunar/changelogs/iot_bridge/changelog.html>`_

Note: upon v0.8, package was renamed openhab_bridge to iot_bridge. The ROS topic names changed from openhab_* to iot_* accordingly.

EoF
