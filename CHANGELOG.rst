^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package iot_bridge
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.9.0 (2017-06-17)
------------------
* Initial release to ROS
* [test] Add unit test.
* [maintenance] Add CI config.
* Contributors: corb555, Isaac I.Y. Saito

0.8.2 (2015-06-21 13:53:54)
---------------------------

0.8.1 (2015-06-21 13:53:20)
---------------------------
* Merge branch 'master' of https://github.com/corb555/iot_bridge
* cleanup
* Update README.md
  updated for v0.8
* Improved diags and recovery.  Changed from long poll to regular poll. Renamed from openhab_bridge to iot_bridge.  Improved iot_test
* removed generate messages
* Merge pull request `#1 <https://github.com/corb555/iot_bridge/issues/1>`_ from IanTheEngineer/patch-1
  Updated package.xml to depend on python-requests
* Updated package.xml to depend on python-requests
  This way you won't have to instruct users to install requests separately.
  See http://docs.ros.org/indigo/api/catkin/html/howto/format1/python_module_dependencies.html
  for a more detailed explanation.
* cleanup
* first commit
* Contributors: IanTheEngineer, corb555, mike
