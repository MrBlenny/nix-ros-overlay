
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, message-filters, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-track-odometry";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/track_odometry/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "9fa36cd87066348cf327f78343dd378ac008a31a7f1d067d0193b32a7dd38709";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs message-filters nav-msgs neonavigation-common roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
