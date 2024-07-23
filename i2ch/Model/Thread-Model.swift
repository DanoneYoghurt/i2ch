//
//  Thread-Model.swift
//  i2ch
//
//  Created by Антон Баскаков on 22.07.2024.
//

import Foundation

struct ThreadItem : Codable {
    let advert_bottom_image : String?
    let advert_bottom_link : String?
    let advert_mobile_image : String?
    let advert_mobile_link : String?
    let advert_top_image : String?
    let advert_top_link : String?
    let board : BoardInformation?
    let board_banner_image : String?
    let board_banner_link : String?
    let current_thread : Int?
    let files_count : Int?
    let is_board : Bool?
    let is_closed : Int?
    let is_index : Bool?
    let max_num : Int?
    let posts_count : Int?
    let thread_first_image : String?
    let threads : [MainThreadsList]?
    let title : String?
    let unique_posters : Int?

    enum CodingKeys: String, CodingKey {

        case advert_bottom_image = "advert_bottom_image"
        case advert_bottom_link = "advert_bottom_link"
        case advert_mobile_image = "advert_mobile_image"
        case advert_mobile_link = "advert_mobile_link"
        case advert_top_image = "advert_top_image"
        case advert_top_link = "advert_top_link"
        case board = "board"
        case board_banner_image = "board_banner_image"
        case board_banner_link = "board_banner_link"
        case current_thread = "current_thread"
        case files_count = "files_count"
        case is_board = "is_board"
        case is_closed = "is_closed"
        case is_index = "is_index"
        case max_num = "max_num"
        case posts_count = "posts_count"
        case thread_first_image = "thread_first_image"
        case threads = "threads"
        case title = "title"
        case unique_posters = "unique_posters"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        advert_bottom_image = try values.decodeIfPresent(String.self, forKey: .advert_bottom_image)
        advert_bottom_link = try values.decodeIfPresent(String.self, forKey: .advert_bottom_link)
        advert_mobile_image = try values.decodeIfPresent(String.self, forKey: .advert_mobile_image)
        advert_mobile_link = try values.decodeIfPresent(String.self, forKey: .advert_mobile_link)
        advert_top_image = try values.decodeIfPresent(String.self, forKey: .advert_top_image)
        advert_top_link = try values.decodeIfPresent(String.self, forKey: .advert_top_link)
        board = try values.decodeIfPresent(BoardInformation.self, forKey: .board)
        board_banner_image = try values.decodeIfPresent(String.self, forKey: .board_banner_image)
        board_banner_link = try values.decodeIfPresent(String.self, forKey: .board_banner_link)
        current_thread = try values.decodeIfPresent(Int.self, forKey: .current_thread)
        files_count = try values.decodeIfPresent(Int.self, forKey: .files_count)
        is_board = try values.decodeIfPresent(Bool.self, forKey: .is_board)
        is_closed = try values.decodeIfPresent(Int.self, forKey: .is_closed)
        is_index = try values.decodeIfPresent(Bool.self, forKey: .is_index)
        max_num = try values.decodeIfPresent(Int.self, forKey: .max_num)
        posts_count = try values.decodeIfPresent(Int.self, forKey: .posts_count)
        thread_first_image = try values.decodeIfPresent(String.self, forKey: .thread_first_image)
        threads = try values.decodeIfPresent([MainThreadsList].self, forKey: .threads)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        unique_posters = try values.decodeIfPresent(Int.self, forKey: .unique_posters)
    }

}

struct BoardInformation : Codable {
    let bump_limit : Int?
    let category : String?
    let default_name : String?
    let enable_dices : Bool?
    let enable_flags : Bool?
    let enable_icons : Bool?
    let enable_likes : Bool?
    let enable_names : Bool?
    let enable_oekaki : Bool?
    let enable_posting : Bool?
    let enable_sage : Bool?
    let enable_shield : Bool?
    let enable_subject : Bool?
    let enable_thread_tags : Bool?
    let enable_trips : Bool?
    let file_types : [String]?
    let id : String?
    let info : String?
    let info_outer : String?
    let max_comment : Int?
    let max_files_size : Int?
    let max_pages : Int?
    let name : String?
    let threads_per_page : Int?

    enum CodingKeys: String, CodingKey {

        case bump_limit = "bump_limit"
        case category = "category"
        case default_name = "default_name"
        case enable_dices = "enable_dices"
        case enable_flags = "enable_flags"
        case enable_icons = "enable_icons"
        case enable_likes = "enable_likes"
        case enable_names = "enable_names"
        case enable_oekaki = "enable_oekaki"
        case enable_posting = "enable_posting"
        case enable_sage = "enable_sage"
        case enable_shield = "enable_shield"
        case enable_subject = "enable_subject"
        case enable_thread_tags = "enable_thread_tags"
        case enable_trips = "enable_trips"
        case file_types = "file_types"
        case id = "id"
        case info = "info"
        case info_outer = "info_outer"
        case max_comment = "max_comment"
        case max_files_size = "max_files_size"
        case max_pages = "max_pages"
        case name = "name"
        case threads_per_page = "threads_per_page"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bump_limit = try values.decodeIfPresent(Int.self, forKey: .bump_limit)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        default_name = try values.decodeIfPresent(String.self, forKey: .default_name)
        enable_dices = try values.decodeIfPresent(Bool.self, forKey: .enable_dices)
        enable_flags = try values.decodeIfPresent(Bool.self, forKey: .enable_flags)
        enable_icons = try values.decodeIfPresent(Bool.self, forKey: .enable_icons)
        enable_likes = try values.decodeIfPresent(Bool.self, forKey: .enable_likes)
        enable_names = try values.decodeIfPresent(Bool.self, forKey: .enable_names)
        enable_oekaki = try values.decodeIfPresent(Bool.self, forKey: .enable_oekaki)
        enable_posting = try values.decodeIfPresent(Bool.self, forKey: .enable_posting)
        enable_sage = try values.decodeIfPresent(Bool.self, forKey: .enable_sage)
        enable_shield = try values.decodeIfPresent(Bool.self, forKey: .enable_shield)
        enable_subject = try values.decodeIfPresent(Bool.self, forKey: .enable_subject)
        enable_thread_tags = try values.decodeIfPresent(Bool.self, forKey: .enable_thread_tags)
        enable_trips = try values.decodeIfPresent(Bool.self, forKey: .enable_trips)
        file_types = try values.decodeIfPresent([String].self, forKey: .file_types)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        info = try values.decodeIfPresent(String.self, forKey: .info)
        info_outer = try values.decodeIfPresent(String.self, forKey: .info_outer)
        max_comment = try values.decodeIfPresent(Int.self, forKey: .max_comment)
        max_files_size = try values.decodeIfPresent(Int.self, forKey: .max_files_size)
        max_pages = try values.decodeIfPresent(Int.self, forKey: .max_pages)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        threads_per_page = try values.decodeIfPresent(Int.self, forKey: .threads_per_page)
    }

}

struct MainThreadsList : Codable {
    let posts : [MainPostsList]?

    enum CodingKeys: String, CodingKey {

        case posts = "posts"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        posts = try values.decodeIfPresent([MainPostsList].self, forKey: .posts)
    }

}

struct MainPostsList : Codable, Hashable {
    
    static func ==(lhs: MainPostsList, rhs: MainPostsList) -> Bool {
        return lhs.date == rhs.date
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(date)
    }
    
    let banned : Int?
    let board : String?
    let closed : Int?
    let comment : String?
    let date : String?
    let email : String?
    let endless : Int?
    let files : [MainFilesList]?
    let lasthit : Int?
    let name : String?
    let num : Int?
    let number : Int?
    let op : Int?
    let parent : Int?
    let sticky : Int?
    let subject : String?
    let tags : String?
    let timestamp : Int?
    let trip : String?
    let views : Int?

    enum CodingKeys: String, CodingKey {

        case banned = "banned"
        case board = "board"
        case closed = "closed"
        case comment = "comment"
        case date = "date"
        case email = "email"
        case endless = "endless"
        case files = "files"
        case lasthit = "lasthit"
        case name = "name"
        case num = "num"
        case number = "number"
        case op = "op"
        case parent = "parent"
        case sticky = "sticky"
        case subject = "subject"
        case tags = "tags"
        case timestamp = "timestamp"
        case trip = "trip"
        case views = "views"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        banned = try values.decodeIfPresent(Int.self, forKey: .banned)
        board = try values.decodeIfPresent(String.self, forKey: .board)
        closed = try values.decodeIfPresent(Int.self, forKey: .closed)
        comment = try values.decodeIfPresent(String.self, forKey: .comment)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        endless = try values.decodeIfPresent(Int.self, forKey: .endless)
        files = try values.decodeIfPresent([MainFilesList].self, forKey: .files)
        lasthit = try values.decodeIfPresent(Int.self, forKey: .lasthit)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        num = try values.decodeIfPresent(Int.self, forKey: .num)
        number = try values.decodeIfPresent(Int.self, forKey: .number)
        op = try values.decodeIfPresent(Int.self, forKey: .op)
        parent = try values.decodeIfPresent(Int.self, forKey: .parent)
        sticky = try values.decodeIfPresent(Int.self, forKey: .sticky)
        subject = try values.decodeIfPresent(String.self, forKey: .subject)
        tags = try values.decodeIfPresent(String.self, forKey: .tags)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        trip = try values.decodeIfPresent(String.self, forKey: .trip)
        views = try values.decodeIfPresent(Int.self, forKey: .views)
    }

}

struct MainFilesList : Codable {
    let displayname : String?
    let duration : String?
    let duration_secs : Int?
    let fullname : String?
    let height : Int?
    let md5 : String?
    let name : String?
    let path : String?
    let size : Int?
    let thumbnail : String?
    let tn_height : Int?
    let tn_width : Int?
    let type : Int?
    let width : Int?

    enum CodingKeys: String, CodingKey {

        case displayname = "displayname"
        case duration = "duration"
        case duration_secs = "duration_secs"
        case fullname = "fullname"
        case height = "height"
        case md5 = "md5"
        case name = "name"
        case path = "path"
        case size = "size"
        case thumbnail = "thumbnail"
        case tn_height = "tn_height"
        case tn_width = "tn_width"
        case type = "type"
        case width = "width"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        displayname = try values.decodeIfPresent(String.self, forKey: .displayname)
        duration = try values.decodeIfPresent(String.self, forKey: .duration)
        duration_secs = try values.decodeIfPresent(Int.self, forKey: .duration_secs)
        fullname = try values.decodeIfPresent(String.self, forKey: .fullname)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        md5 = try values.decodeIfPresent(String.self, forKey: .md5)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        path = try values.decodeIfPresent(String.self, forKey: .path)
        size = try values.decodeIfPresent(Int.self, forKey: .size)
        thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
        tn_height = try values.decodeIfPresent(Int.self, forKey: .tn_height)
        tn_width = try values.decodeIfPresent(Int.self, forKey: .tn_width)
        type = try values.decodeIfPresent(Int.self, forKey: .type)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
    }

}
