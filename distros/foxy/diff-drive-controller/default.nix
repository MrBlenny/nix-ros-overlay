
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-diff-drive-controller";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/diff_drive_controller/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ff39df59f226a74dd77e33311384d938984d4ff2711afe1303732857a156dd7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ];
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface nav-msgs rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ asl20 ];
  };
}
