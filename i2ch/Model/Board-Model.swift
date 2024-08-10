//
//  Board.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//


import Foundation

struct BoardItem: Codable {

  var advertBottomImage : String
  var advertBottomLink  : String
  var advertMobileImage : String
  var advertMobileLink  : String
  var advertTopImage    : String
  var advertTopLink     : String
  var board             : Board
  var boardBannerImage  : String
  var boardBannerLink   : String
  var filter            : String
  var threads           : [Threads]

  enum CodingKeys: String, CodingKey {

    case advertBottomImage = "advert_bottom_image"
    case advertBottomLink  = "advert_bottom_link"
    case advertMobileImage = "advert_mobile_image"
    case advertMobileLink  = "advert_mobile_link"
    case advertTopImage    = "advert_top_image"
    case advertTopLink     = "advert_top_link"
    case board             = "board"
    case boardBannerImage  = "board_banner_image"
    case boardBannerLink   = "board_banner_link"
    case filter            = "filter"
    case threads           = "threads"
  
  }

}

struct Board: Codable {

  var bumpLimit        : Int
  var category         : String
  var defaultName      : String
  var enableDices      : Bool
  var enableFlags      : Bool
  var enableIcons      : Bool
  var enableLikes      : Bool
  var enableNames      : Bool
  var enableOekaki     : Bool
  var enablePosting    : Bool
  var enableSage       : Bool
  var enableShield     : Bool
  var enableSubject    : Bool
  var enableThreadTags : Bool
  var enableTrips      : Bool
  var fileTypes        : [String]
  var id               : String
  var info             : String
  var infoOuter        : String
  var maxComment       : Int
  var maxFilesSize     : Int
  var maxPages         : Int
  var name             : String
  var threadsPerPage   : Int

  enum CodingKeys: String, CodingKey {

    case bumpLimit        = "bump_limit"
    case category         = "category"
    case defaultName      = "default_name"
    case enableDices      = "enable_dices"
    case enableFlags      = "enable_flags"
    case enableIcons      = "enable_icons"
    case enableLikes      = "enable_likes"
    case enableNames      = "enable_names"
    case enableOekaki     = "enable_oekaki"
    case enablePosting    = "enable_posting"
    case enableSage       = "enable_sage"
    case enableShield     = "enable_shield"
    case enableSubject    = "enable_subject"
    case enableThreadTags = "enable_thread_tags"
    case enableTrips      = "enable_trips"
    case fileTypes        = "file_types"
    case id               = "id"
    case info             = "info"
    case infoOuter        = "info_outer"
    case maxComment       = "max_comment"
    case maxFilesSize     = "max_files_size"
    case maxPages         = "max_pages"
    case name             = "name"
    case threadsPerPage   = "threads_per_page"
  
  }

}



struct Threads: Codable {

  var banned     : Int
  var board      : String
  var closed     : Int
  var comment    : String
  var date       : String
  var email      : String
  var endless    : Int
  var files      : [Files]
  var filesCount : Int
  var lasthit    : Int
  var name       : String
  var num        : Int
  var op         : Int
  var parent     : Int
  var postsCount : Int
  var sticky     : Int
  var subject    : String
  var tags       : String
  var timestamp  : Int
  var trip       : String
  var views      : Int

  enum CodingKeys: String, CodingKey {

    case banned     = "banned"
    case board      = "board"
    case closed     = "closed"
    case comment    = "comment"
    case date       = "date"
    case email      = "email"
    case endless    = "endless"
    case files      = "files"
    case filesCount = "files_count"
    case lasthit    = "lasthit"
    case name       = "name"
    case num        = "num"
    case op         = "op"
    case parent     = "parent"
    case postsCount = "posts_count"
    case sticky     = "sticky"
    case subject    = "subject"
    case tags       = "tags"
    case timestamp  = "timestamp"
    case trip       = "trip"
    case views      = "views"
  
  }

}

struct Files: Codable {

  var displayname : String
  var fullname    : String
  var height      : Int
  var md5         : String
  var name        : String
  var path        : String
  var size        : Int
  var thumbnail   : String
  var tnHeight    : Int
  var tnWidth     : Int
  var type        : Int
  var width       : Int

  enum CodingKeys: String, CodingKey {

    case displayname = "displayname"
    case fullname    = "fullname"
    case height      = "height"
    case md5         = "md5"
    case name        = "name"
    case path        = "path"
    case size        = "size"
    case thumbnail   = "thumbnail"
    case tnHeight    = "tn_height"
    case tnWidth     = "tn_width"
    case type        = "type"
    case width       = "width"
  
  }

}

