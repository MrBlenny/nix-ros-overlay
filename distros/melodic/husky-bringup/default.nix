
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-control, husky-description, imu-filter-madgwick, imu-transformer, lms1xx, microstrain-3dmgx2-imu, microstrain-mips, nmea-comms, nmea-navsat-driver, pythonPackages, realsense2-camera, robot-localization, robot-upstart, roslaunch, tf, tf2-ros, um6, um7, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-husky-bringup";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_bringup/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "46bad79d296bc55882200607ea60f6e9b7f025a9826a394314a6f72ba72d0b55";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-base husky-control husky-description imu-filter-madgwick imu-transformer lms1xx microstrain-3dmgx2-imu microstrain-mips nmea-comms nmea-navsat-driver pythonPackages.scipy realsense2-camera robot-localization robot-upstart tf tf2-ros um6 um7 velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
