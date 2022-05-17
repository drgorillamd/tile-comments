// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

struct Ring {
  uint8 positionIndex;
  uint8 size;
  uint8 layer;
  bool positionKind;
  bool solid;
}
