
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, fake-localization, gazebo-ros, joint-state-publisher, mir-description, mir-driver, robot-localization, robot-state-publisher, roslaunch, rostopic, rqt-robot-steering, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mir-gazebo";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_gazebo/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "54beba93b845ad70a5d910144c1e2a2c535edc34b63fa0a63e85b9fb261593d3";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager fake-localization gazebo-ros joint-state-publisher mir-description mir-driver robot-localization robot-state-publisher rostopic rqt-robot-steering topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
