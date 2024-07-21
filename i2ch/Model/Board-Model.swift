//
//  Board.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//


import Foundation

struct BoardItem: Codable {

  var advertBottomImage : String?    = nil
  var advertBottomLink  : String?    = nil
  var advertMobileImage : String?    = nil
  var advertMobileLink  : String?    = nil
  var advertTopImage    : String?    = nil
  var advertTopLink     : String?    = nil
  var board             : Board?     = Board()
  var boardBannerImage  : String?    = nil
  var boardBannerLink   : String?    = nil
  var filter            : String?    = nil
  var threads           : [Threads]? = []

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

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    advertBottomImage = try values.decodeIfPresent(String.self    , forKey: .advertBottomImage )
    advertBottomLink  = try values.decodeIfPresent(String.self    , forKey: .advertBottomLink  )
    advertMobileImage = try values.decodeIfPresent(String.self    , forKey: .advertMobileImage )
    advertMobileLink  = try values.decodeIfPresent(String.self    , forKey: .advertMobileLink  )
    advertTopImage    = try values.decodeIfPresent(String.self    , forKey: .advertTopImage    )
    advertTopLink     = try values.decodeIfPresent(String.self    , forKey: .advertTopLink     )
    board             = try values.decodeIfPresent(Board.self     , forKey: .board             )
    boardBannerImage  = try values.decodeIfPresent(String.self    , forKey: .boardBannerImage  )
    boardBannerLink   = try values.decodeIfPresent(String.self    , forKey: .boardBannerLink   )
    filter            = try values.decodeIfPresent(String.self    , forKey: .filter            )
    threads           = try values.decodeIfPresent([Threads].self , forKey: .threads           )
 
  }

  init() {

  }

}

struct Board: Codable {

  var bumpLimit        : Int?      = nil
  var category         : String?   = nil
  var defaultName      : String?   = nil
  var enableDices      : Bool?     = nil
  var enableFlags      : Bool?     = nil
  var enableIcons      : Bool?     = nil
  var enableLikes      : Bool?     = nil
  var enableNames      : Bool?     = nil
  var enableOekaki     : Bool?     = nil
  var enablePosting    : Bool?     = nil
  var enableSage       : Bool?     = nil
  var enableShield     : Bool?     = nil
  var enableSubject    : Bool?     = nil
  var enableThreadTags : Bool?     = nil
  var enableTrips      : Bool?     = nil
  var fileTypes        : [String]? = []
  var id               : String?   = nil
  var info             : String?   = nil
  var infoOuter        : String?   = nil
  var maxComment       : Int?      = nil
  var maxFilesSize     : Int?      = nil
  var maxPages         : Int?      = nil
  var name             : String?   = nil
  var threadsPerPage   : Int?      = nil

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

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    bumpLimit        = try values.decodeIfPresent(Int.self      , forKey: .bumpLimit        )
    category         = try values.decodeIfPresent(String.self   , forKey: .category         )
    defaultName      = try values.decodeIfPresent(String.self   , forKey: .defaultName      )
    enableDices      = try values.decodeIfPresent(Bool.self     , forKey: .enableDices      )
    enableFlags      = try values.decodeIfPresent(Bool.self     , forKey: .enableFlags      )
    enableIcons      = try values.decodeIfPresent(Bool.self     , forKey: .enableIcons      )
    enableLikes      = try values.decodeIfPresent(Bool.self     , forKey: .enableLikes      )
    enableNames      = try values.decodeIfPresent(Bool.self     , forKey: .enableNames      )
    enableOekaki     = try values.decodeIfPresent(Bool.self     , forKey: .enableOekaki     )
    enablePosting    = try values.decodeIfPresent(Bool.self     , forKey: .enablePosting    )
    enableSage       = try values.decodeIfPresent(Bool.self     , forKey: .enableSage       )
    enableShield     = try values.decodeIfPresent(Bool.self     , forKey: .enableShield     )
    enableSubject    = try values.decodeIfPresent(Bool.self     , forKey: .enableSubject    )
    enableThreadTags = try values.decodeIfPresent(Bool.self     , forKey: .enableThreadTags )
    enableTrips      = try values.decodeIfPresent(Bool.self     , forKey: .enableTrips      )
    fileTypes        = try values.decodeIfPresent([String].self , forKey: .fileTypes        )
    id               = try values.decodeIfPresent(String.self   , forKey: .id               )
    info             = try values.decodeIfPresent(String.self   , forKey: .info             )
    infoOuter        = try values.decodeIfPresent(String.self   , forKey: .infoOuter        )
    maxComment       = try values.decodeIfPresent(Int.self      , forKey: .maxComment       )
    maxFilesSize     = try values.decodeIfPresent(Int.self      , forKey: .maxFilesSize     )
    maxPages         = try values.decodeIfPresent(Int.self      , forKey: .maxPages         )
    name             = try values.decodeIfPresent(String.self   , forKey: .name             )
    threadsPerPage   = try values.decodeIfPresent(Int.self      , forKey: .threadsPerPage   )
 
  }

  init() {

  }

}



struct Threads: Codable {

  var banned     : Int?     = nil
  var board      : String?  = nil
  var closed     : Int?     = nil
  var comment    : String?  = nil
  var date       : String?  = nil
  var email      : String?  = nil
  var endless    : Int?     = nil
  var files      : [Files]? = []
  var filesCount : Int?     = nil
  var lasthit    : Int?     = nil
  var name       : String?  = nil
  var num        : Int?     = nil
  var op         : Int?     = nil
  var parent     : Int?     = nil
  var postsCount : Int?     = nil
  var sticky     : Int?     = nil
  var subject    : String?  = nil
  var tags       : String?  = nil
  var timestamp  : Int?     = nil
  var trip       : String?  = nil
  var views      : Int?     = nil

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

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    banned     = try values.decodeIfPresent(Int.self     , forKey: .banned     )
    board      = try values.decodeIfPresent(String.self  , forKey: .board      )
    closed     = try values.decodeIfPresent(Int.self     , forKey: .closed     )
    comment    = try values.decodeIfPresent(String.self  , forKey: .comment    )
    date       = try values.decodeIfPresent(String.self  , forKey: .date       )
    email      = try values.decodeIfPresent(String.self  , forKey: .email      )
    endless    = try values.decodeIfPresent(Int.self     , forKey: .endless    )
    files      = try values.decodeIfPresent([Files].self , forKey: .files      )
    filesCount = try values.decodeIfPresent(Int.self     , forKey: .filesCount )
    lasthit    = try values.decodeIfPresent(Int.self     , forKey: .lasthit    )
    name       = try values.decodeIfPresent(String.self  , forKey: .name       )
    num        = try values.decodeIfPresent(Int.self     , forKey: .num        )
    op         = try values.decodeIfPresent(Int.self     , forKey: .op         )
    parent     = try values.decodeIfPresent(Int.self     , forKey: .parent     )
    postsCount = try values.decodeIfPresent(Int.self     , forKey: .postsCount )
    sticky     = try values.decodeIfPresent(Int.self     , forKey: .sticky     )
    subject    = try values.decodeIfPresent(String.self  , forKey: .subject    )
    tags       = try values.decodeIfPresent(String.self  , forKey: .tags       )
    timestamp  = try values.decodeIfPresent(Int.self     , forKey: .timestamp  )
    trip       = try values.decodeIfPresent(String.self  , forKey: .trip       )
    views      = try values.decodeIfPresent(Int.self     , forKey: .views      )
 
  }

  init() {

  }

}

struct Files: Codable {

  var displayname : String? = nil
  var fullname    : String? = nil
  var height      : Int?    = nil
  var md5         : String? = nil
  var name        : String? = nil
  var path        : String? = nil
  var size        : Int?    = nil
  var thumbnail   : String? = nil
  var tnHeight    : Int?    = nil
  var tnWidth     : Int?    = nil
  var type        : Int?    = nil
  var width       : Int?    = nil

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

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    displayname = try values.decodeIfPresent(String.self , forKey: .displayname )
    fullname    = try values.decodeIfPresent(String.self , forKey: .fullname    )
    height      = try values.decodeIfPresent(Int.self    , forKey: .height      )
    md5         = try values.decodeIfPresent(String.self , forKey: .md5         )
    name        = try values.decodeIfPresent(String.self , forKey: .name        )
    path        = try values.decodeIfPresent(String.self , forKey: .path        )
    size        = try values.decodeIfPresent(Int.self    , forKey: .size        )
    thumbnail   = try values.decodeIfPresent(String.self , forKey: .thumbnail   )
    tnHeight    = try values.decodeIfPresent(Int.self    , forKey: .tnHeight    )
    tnWidth     = try values.decodeIfPresent(Int.self    , forKey: .tnWidth     )
    type        = try values.decodeIfPresent(Int.self    , forKey: .type        )
    width       = try values.decodeIfPresent(Int.self    , forKey: .width       )
 
  }

  init() {

  }

}

