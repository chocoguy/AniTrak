//
//  AniTrakApp.swift
//  AniTrak
//
//  Created by Edgar Zarco on 10/26/25.
//

import SwiftUI
import SwiftData

@main
struct AniTrakApp: App {
    
    let container: ModelContainer
    
    init() {
        do {
            let configuration = ModelConfiguration(isStoredInMemoryOnly: false, )
            container = try ModelContainer(for: Anime.self, AirDay.self, MediaType.self, OriginalSource.self, Season.self, TrackedAnime.self, Trip.self, User.self, WatchStatus.self, configurations: configuration)
            
            let context = ModelContext(container)
            let requiresSampleData = !UserDefaults.standard.bool(forKey: "hasSeededDatabase")
            
            preloadSampleData(into: context)
           
            //USE IN PROD
//            if(requiresSampleData){
//                preloadSampleData(into: context)
//            }
        }
        catch {
            fatalError("Could not init ModelContainer: \(error.localizedDescription)")
        }
    }
        
    var body: some Scene {
        WindowGroup {
            MainForm()
                .modelContainer(container)
        }
        .windowResizability(WindowResizability.contentSize)
    }
    
    
    private func preloadSampleData(into context: ModelContext) {
        
        
        //UNCOMMENT PROD
        //guard !UserDefaults.standard.bool(forKey: "hasSeededDatabase") else {return}
        
        Task.detached(priority: .utility) {
            let backgroundContext = ModelContext(container)
            backgroundContext.autosaveEnabled = true
            
            let startSeedTime = CFAbsoluteTime()
            
            //await preloadMediaTypes(into: backgroundContext)
            //await preloadAirDays(into: backgroundContext)
            //await preloadOriginalSources(into: backgroundContext)
            //await preloadSeasons(into: backgroundContext)
            //await preloadWatchStatuses(into: backgroundContext)
            await preloadAnimes(into: backgroundContext)
            //await preloadUsers(into: backgroundContext)
            await preloadTrackedAnimes(into: backgroundContext)
            
            //UNCOMMENT PROD
            //UserDefaults.standard.set(true, forKey: "hasSeededDatabase")
        }
    }
    
    
    //Preload functions
        
    private func preloadMediaTypes(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakMediaType") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let mediaTypeList = try decoder.decode([MediaType].self, from: data)
                
                for mediaType in mediaTypeList {
                    context.insert(mediaType)
                }
            }
        } catch {
            print("Could not preload media types \(error.localizedDescription)")
        }
    }

    private func preloadAirDays(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakAirDay") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let airDayList = try decoder.decode([AirDay].self, from: data)
                
                for airDay in airDayList {
                    context.insert(airDay)
                }
            }
        } catch {
            print("Could not preload air days \(error.localizedDescription)")
        }
    }
    
    private func preloadAnimes(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakAnime") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let animeList = try decoder.decode([Anime].self, from: data)
                
                for anime in animeList {
                    
                    anime.OnAir = DateFromString(dateString: "1998-04-07")
                    anime.OffAir = DateFromString(dateString: "2000-03-21");
                    
                    anime.LastSynced = Date();
                    anime.LastModified = Date();
                    
                    context.insert(anime)
                }
                
            }
        } catch {
            print("Could not preload anime \(error.localizedDescription)")
        }
        
    }
    
    private func preloadOriginalSources(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakOriginalSource") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let originalSourceList = try decoder.decode([OriginalSource].self, from: data)
                
                for originalSource in originalSourceList {
                    context.insert(originalSource)
                }
            }
        } catch {
            print("Could not preload original sources \(error.localizedDescription)")
        }
        
    }
    
    private func preloadSeasons(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakSeason") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let seasonList = try decoder.decode([Season].self, from: data)
                
                for season in seasonList {
                    context.insert(season)
                }
                
            }
            
        } catch {
            print("Could not preload seaons \(error.localizedDescription)")
        }
        
    }
    
    private func preloadTrackedAnimes(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakAnime") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let animeList = try decoder.decode([TrackedAnime].self, from: data)
                
                for anime in animeList {
                    
                    anime.LastModified = Date();
                    
                    context.insert(anime)
                }
            }
        } catch {
            print("Could not preload tracked anime \(error.localizedDescription)")
        }
        
        
    }
    
    private func preloadUsers(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakUser") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let userList = try decoder.decode([User].self, from: data)
                
                for user in userList {
                    
                    user.CreatedAt = Date();
                    user.LastSync = Date();
                    
                    context.insert(user)
                }
            }
        } catch {
            print("Could not preload users \(error.localizedDescription)")
        }
        
    }
    
    
    private func preloadWatchStatuses(into context: ModelContext) async {
        do {
            if let asset = NSDataAsset(name: "AniTrakWatchStatus") {
                let data = asset.data
                let decoder = JSONDecoder()
                
                let watchStatusList = try decoder.decode([WatchStatus].self, from: data)
                
                for watchStatus in watchStatusList {
                    context.insert(watchStatus)
                }
            }
            
        } catch {
            print("Could not preload watch statuses \(error.localizedDescription)")
        }
    }
}



//the Guard negates the If
//        guard let url = Bundle.main.url(forResource: "AniTrakWatchStatus", withExtension: "json") else {
//            print("Could not find watch statuses to import!")
//            return
//        }


// Source - https://stackoverflow.com/a
// Posted by DerrickHo328, modified by community. See post 'Timeline' for change history
// Retrieved 2025-12-14, License - CC BY-SA 3.0

//if let asset = NSDataAsset(name: "CoolJSON") {
//    let data = asset.data
//    let d = try? NSJSONSerialization.JSONObjectWithData(data, options: [])
//}



//for relationships I guess, goes inside the preload funcs
//decoder.userInfo[.modelContext] = contex

//used to do it like this:
//.modelContainer(for: [Anime.self, AirDay.self, MediaType.self, OriginalSource.self, Season.self, TrackedAnime.self, Trip.self, User.self, WatchStatus.self])

//.frame(width: 808, height: 407).frame(minWidth: 808, idealWidth: 808, maxWidth: 808, minHeight: 407, idealHeight: 407, maxHeight: 407)

//Single record loading
//User
//let defaultUser = User(UserId: 1, Username: "Anime Enjoyer", CreatedAt: Date(), LastSync: Date(), AuthZeroId: "", Pfp: "")
//Media Types
//let amt1 = MediaType(MediaTypeId: 1, Name: "TV")


