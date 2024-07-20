//
//  Board-Model.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import Foundation

struct BoardListItem: Codable, Comparable {
    
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
    
    static func <(lhs: BoardListItem, rhs: BoardListItem) -> Bool {
        lhs.name < rhs.name
    }
    
    //  init(from decoder: Decoder) throws {
    //    let values = try decoder.container(keyedBy: CodingKeys.self)
    //
    //    bumpLimit        = try values.decodeIfPresent(Int.self      , forKey: .bumpLimit        )
    //    category         = try values.decodeIfPresent(String.self   , forKey: .category         )
    //    defaultName      = try values.decodeIfPresent(String.self   , forKey: .defaultName      )
    //    enableDices      = try values.decodeIfPresent(Bool.self     , forKey: .enableDices      )
    //    enableFlags      = try values.decodeIfPresent(Bool.self     , forKey: .enableFlags      )
    //    enableIcons      = try values.decodeIfPresent(Bool.self     , forKey: .enableIcons      )
    //    enableLikes      = try values.decodeIfPresent(Bool.self     , forKey: .enableLikes      )
    //    enableNames      = try values.decodeIfPresent(Bool.self     , forKey: .enableNames      )
    //    enableOekaki     = try values.decodeIfPresent(Bool.self     , forKey: .enableOekaki     )
    //    enablePosting    = try values.decodeIfPresent(Bool.self     , forKey: .enablePosting    )
    //    enableSage       = try values.decodeIfPresent(Bool.self     , forKey: .enableSage       )
    //    enableShield     = try values.decodeIfPresent(Bool.self     , forKey: .enableShield     )
    //    enableSubject    = try values.decodeIfPresent(Bool.self     , forKey: .enableSubject    )
    //    enableThreadTags = try values.decodeIfPresent(Bool.self     , forKey: .enableThreadTags )
    //    enableTrips      = try values.decodeIfPresent(Bool.self     , forKey: .enableTrips      )
    //    fileTypes        = try values.decodeIfPresent([String].self , forKey: .fileTypes        )
    //    id               = try values.decodeIfPresent(String.self   , forKey: .id               )
    //    info             = try values.decodeIfPresent(String.self   , forKey: .info             )
    //    infoOuter        = try values.decodeIfPresent(String.self   , forKey: .infoOuter        )
    //    maxComment       = try values.decodeIfPresent(Int.self      , forKey: .maxComment       )
    //    maxFilesSize     = try values.decodeIfPresent(Int.self      , forKey: .maxFilesSize     )
    //    maxPages         = try values.decodeIfPresent(Int.self      , forKey: .maxPages         )
    //    name             = try values.decodeIfPresent(String.self   , forKey: .name             )
    //    threadsPerPage   = try values.decodeIfPresent(Int.self      , forKey: .threadsPerPage   )
    //
    //  }
    
    //  init() {
    //
    //  }
    
}
