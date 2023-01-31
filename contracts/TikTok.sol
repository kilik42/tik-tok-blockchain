// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TikTok {
  constructor() public {

   
  }
   struct Video {
      string caption;
      string url;
      uint256 likes;
      uint256 dislikes;
      address owner;
      address[] likers;

    }

    mapping(address => mapping(uint => bool)) public likedUsers;

    mapping(address => mapping(uint => bool)) public dislikedUsers;

    mapping(uint => Video) public videos;
    mapping(uint256 => uint256) public likes;

    uint public videoCount = 0;

    function uploadVideo(string memory _caption, string memory _url) public {
      require(bytes(_caption).length > 0);
      require(bytes(_url).length > 0);
      require(msg.sender != address(0));
      videoCount++;
      videos[videoCount] = Video(_caption, _url, 0, 0, msg.sender, new address[](0));

      // Trigger an event
      emit VideoCreated(videoCount, _caption, _url, 0, 0, msg.sender);
      emit VideoLiked(videoCount, 0, msg.sender);
      emit VideoDisliked(videoCount, 0, msg.sender);
    }
    event VideoCreated(
      uint id,
      string caption,
      string url,
      uint256 likes,
      uint256 dislikes,
      address owner
    );
    event VideoLiked (uint id, uint256 likes, address owner);
    event VideoDisliked (uint id, uint256 dislikes, address owner);
}
