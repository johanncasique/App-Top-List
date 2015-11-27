//
//  AppGroupModel.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppGroupModel.h"
#import "AppModel.h"
#import <AFNetworking.h>



@interface AppGroupModel ()

@property (strong, nonatomic) NSArray *appArrays;



@end

@implementation AppGroupModel

-(NSUInteger)appCounts{
    
    
    return [self.appArrays count];
    
}


-(id)init{
    
    
    if (self = [super init]) {
        
        
        
        
                AppModel *app1 = [[AppModel alloc] initWithImName:@"Twist"
                                                          summary:@"Stay on the platforms and do as many jumps as you can.\n\nJust tap the screen to jump and twist the platforms. Try not to fall off the edges!\n\nCollect gems to unlock new balls and platform colors.\n\nWhat is your best score ?"
                                                          imImage:[UIImage imageNamed:@"100x100bb-85.png"]
                                                    appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/twist/id1052231801?mt=8&uo=2"]
                                                           rights:@"© Ketchapp"
                                                         category:@"Games"
                                                          company:@"Ketchapp"
                                                      releaseDate:@"November 11, 2015"];
        
        
        
        
                AppModel *app2 = [[AppModel alloc] initWithImName:@"Messenger"
                                                          summary:@"Instantly reach the people in your life—for free. Messenger is just like texting, but you don't have to pay for every message (it works with your data plan). \n\nNot just for Facebook friends: Message people in your phone book and just enter a phone number to add a new contact.\n\nGroup chats: Create groups for the people you message most. Name them, set group photos and keep them all in one place.\n\nPhotos and videos: Shoot videos and snap selfies or other photos right from the app and send them with one tap.\n\nFree calls: Talk as long as you want, even with people in other countries. (Calls are free over Wi-Fi. Otherwise, standard data charges apply.)\n\nEven more ways to message: \nBring your conversations to life with stickers. \nPreview your camera roll photos and videos without leaving the conversation--then choose the perfect ones to send.\nRecord voice messages when you have more to say.\n\nExtra features:\nKnow when people have seen your messages.\nForward messages or photos to people who weren't in the conversation.\nSearch for people and groups to quickly get back to them.\nTurn on location to let people know when you're nearby.\nSee who's available on Messenger and who's active on Facebook. \nTurn off notifications when you're working, sleeping or just need a break.\nStay logged in so you never miss a message."
                                                          imImage:[UIImage imageNamed:@"75x75bb-85.png"]
                                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/developer/facebook-inc./id284882218?mt=8&uo=2"]
                                                           rights:@"© Facebook, Inc."
                                                         category:@"Social Networking"
                                                          company:@"Facebook, Inc."
                                                      releaseDate:@"August 9, 2011"];
        
                AppModel *app3 = [[AppModel alloc] initWithImName:@"Instagram"
                                                          summary:@"Instagram is a simple way to capture and share the world's moments. Transform your everyday  photos and videos into works of art and share them with your family and friends. \n\nSee the world through somebody else's eyes by following not only the people you know, but inspirational Instagrammers, photographers, athletes, celebrities and fashion icons. Every time you open Instagram, you'll see new photos and videos from your closest friends, plus breathtaking moments shared by creative people across the globe.\n\nOver 400 million people use Instagram to: \n\n* Edit photos and videos with free, custom-designed filters. \n* Improve photos with 10 advanced creative tools to change brightness, contrast and saturation as well as shadows, highlights and perspective.\n* Find  people to follow based on the accounts and photos they already love.\n* Make videos look cinematic with Instagram's custom-built stabilization.\n* Instantly share photos and videos on Facebook, Twitter, Tumblr and other social networks. \n* Connect with Instagrammers all over the world and keep up with their photos and videos. \n* Send private photo and video messages directly to friends.\n* Use Handoff to switch between your Apple Watch and your iPhone"
                                                          imImage:[UIImage imageNamed:@"instagram.png"]
                                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/instagram/id389801252?mt=8&uo=2"]
                                                           rights:@"© 2015 Instagram, LLC."
                                                         category:@"Photo & Video"
                                                          company:@"Instagram - Instagram, Inc."
                                                      releaseDate:@"October 6, 2010"];
        
             AppModel *app4 = [[AppModel alloc] initWithImName:@"Facebook"
                                                       summary:@"Keeping up with friends is faster than ever.\n• See what friends are up to\n• Share updates, photos and videos\n• Get notified when friends like and comment on your posts\n• Text, chat and have group conversations\n• Play games and use your favorite apps\n\nRead our Data Use Policy, Terms and other important info in the legal section of our App Store description.\n\nContinued use of GPS running in the background can dramatically decrease battery life. Facebook doesn’t run GPS in the background unless you give us permission by turning on optional features that require this."
                                                       imImage:[UIImage imageNamed:@"facebook.png"]
                                                 appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/facebook/id284882215?mt=8&uo=2"]
                                                        rights:@"© Facebook, Inc."
                                                      category:@"Social Networking"
                                                       company:@"Facebook, Inc."
                                                   releaseDate:@"July 11, 2008"];
        
        
        
        
            AppModel *app5 = [[AppModel alloc] initWithImName:@"YouTube"
                                                      summary:@"Get the official YouTube app for iPhone and iPad. See what the world is watching – from the hottest music videos to what’s trending in gaming, entertainment, news and more. Subscribe to channels you love, share with friends, and watch on any device.\n\nWith a new design, you can now have fun exploring videos you love more easily and quickly than before. Just tap an icon or swipe to switch between recommended videos, your subscriptions, or your account. You can also subscribe to your favorite channels, create playlists, edit and upload videos, express yourself with comments or shares, throw a video to your TV, and more – all from inside the app.\n\nFIND VIDEOS YOU LOVE FAST\n-Browse personal recommendations on the home tab\n-See the latest from the creators you follow on the subscriptions tab\n-Look up videos you’ve watched and your like history on the account tab\n\nCONNECT AND SHARE\n-Let people know how you feel with likes, comments, or shares\n-Edit, add filters, add music, and upload your own videos all inside the app"
                                                      imImage:[UIImage imageNamed:@"youtube.png"]
                                                appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/youtube/id544007664?mt=8&uo=2"]
                                                       rights:@"© 2015 Google Inc."
                                                     category:@"Photo & Video"
                                                      company:@"Google Inc."
                                                  releaseDate:@"September 11, 2012"];
        
        
                AppModel *app6 = [[AppModel alloc] initWithImName:@"Snapchat"
                                                          summary:@"Life's more fun when you live in the moment :) Happy Snapping!\n\n* * *\n\nPlease note: Snapchatters can always capture or save your messages, such as by taking a screenshot or using a camera. Be mindful of what you Snap!"
                                                          imImage:[UIImage imageNamed:@"snapchat.png"]
                                                    appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/snapchat/id447188370?mt=8&uo=2"]
                                                           rights:@"© Snapchat, Inc."
                                                         category:@"Photo & Video"
                                                          company:@"Snapchat, Inc."
                                                      releaseDate:@"July 13, 2011"];
        
        
                AppModel *app7  = [[AppModel alloc] initWithImName:@"iTunes U"
                                                           summary:@"iTunes U provides everything an instructor needs to bring their classroom together on iPad—build lessons with apps and your own materials, collect and grade assignments from students, discuss one-on-one or in groups, and annotate PDF assignments.\n\niTunes U is also still the place where anyone with an iPhone, iPad, or iPod touch can learn from the world’s largest collection of free education content—including public courses and collections from leading schools, universities, museums, and cultural institutions.\n\nFor Instructors:\n• Plan lessons, grade assignments, and stay connected—all right from your iPad\n• Add your own teaching materials—including documents, worksheets, web links, photos, and videos\n• Engage every learner by including apps, books, videos, podcasts and more from iTunes, App Store, and iBooks\n• Add instructions or comments to PDFs with built-in annotation tools\n• See when students have viewed their assignments, completed their work, or remind them when they are due\n• Use the integrated grade book to enter grades as you go and track the progress of your entire class at a glance\n• Use the single-student view to offer private and individual attention for quick check-ins or parent-teacher conferences\n• Answer individual questions in one-on-one chats or start debates with the entire class using group discussions\n• Keep students in the loop and prepared for class with notifications\n• Teachers affiliated with qualified institutions can publish courses to the iTunes U catalog to make them available everyone for free. \n\nFor Students:\n• See your assignments and instructor updates in one place, and check off assignments as you complete them\n• Submit your work from any Apple creativity app, dozens of third-party apps, or as annotated PDFs for private courses\n• Ask instructors questions or have them review your work outside of class time with one-to-one discussions\n• Start or join in on group discussions with the whole class\n• See your graded results for all past assignments\n\nBrowse the world’s largest catalog of free education content:\n• Choose from more than 1 million free lectures, videos, books, and other resources on thousands of subjects from Algebra to Zoology from educational and cultural institutions around the world\n• Share your favorite courses with friends using Twitter, Facebook, Mail, and Messages\n• iTunes U includes materials from Stanford, Yale, MIT, Oxford, McGill University, La Trobe University, University of Tokyo, Museo Nacional del Prado, Smithsonian Libraries, National Theatre, Library of Congress, and many more \n\t\nRequirements:\n• Participating in courses requires iPhone, iPad, or iPod touch with iOS 8.3 or later\n• Creating courses requires iPad with iOS 8.3 or later\n• Built-in PDF annotation requires iPad (3rd generation) or later, iPad mini 2 or later\n• An Apple ID set up for use on the iTunes Store\n• iTunes 12 or later is required to sync with a computer\n• Publishing public courses to iTunes U requires teachers to be affiliated with a qualified institution"
                                                           imImage:[UIImage imageNamed:@"itunesU.png"]
                                                     appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/itunes-u/id490217893?mt=8&uo=2"]
                                                            rights:@"© 2015 Apple Inc."
                                                          category:@"Education"
                                                           company:@"Apple Inc"
                                                       releaseDate:@"January 19, 2012"];
        
                AppModel *app8 = [[AppModel alloc] initWithImName:@"Pandora"
                                                          summary:@"Great music discovery is effortless and free with Pandora. Just start with the name of one of your favorite artists, songs, genres or composers and we will do the rest. It’s easy to create personalized stations that play only music you’ll love.\n \nTap into an entire world of music, including almost a century of popular recordings - new and old, well known and obscure. Create up to 100 personalized radio stations with your free account.\n\nNot sure where to start?  Create a free account to explore hundreds of music and comedy genre stations.\n\nAlready a Pandora listener? Even easier. Just log in and enjoy the same free radio service. Your Pandora is the same across the web, on your TV and in your car—access your free personalized radio wherever you want to hear great music. Enjoy all your existing music and comedy stations - and create new ones right from your iPhone, iPad or iPod Touch.\n\nIf you want the music and nothing but the music, you can also subscribe to Pandora One:\n\n•     No Ads everywhere you listen to Pandora\n\nPlus the following features on the web:\n•     Higher Quality Audio\n•     Desktop Application\n•     Custom Skins\n•     Fewer Interruptions\n\nYour Pandora One subscription will automatically renew each month and your credit card will be charged through your iTunes account. You can turn off auto-renew at any time from your iTunes account settings. Please go to www.pandora.com/privacy and pandora.com/legal_apple for more information."
                                                          imImage:[UIImage imageNamed:@"pandora.png"]
                                                    appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/pandora-free-music-radio/id284035177?mt=8&uo=2"]
                                                           rights:@"© 2015 Pandora Media, Inc."
                                                         category:@"Music"
                                                          company:@"Pandora Media, Inc."
                                                      releaseDate:@"July 11, 2008"];
        
                AppModel *app9 = [[AppModel alloc] initWithImName:@"Amazon App: shop, browse, scan, compare, and read reviews"
                                                          summary:@"Comprehensive \nBrowse, search, get product details, read reviews and purchase millions of products available from Amazon.com and other merchants. \n\nConvenient \nSign in with your existing Amazon account to access your cart, payment and shipping options. Create or find a baby or wedding registry.  No need to create a new account to manage your 1-Click settings and wish lists, track your orders and use your Prime membership benefits. Shop just as you do on the web. \n\nFast \nCompare prices and check availability instantly by scanning a barcode, snapping a picture or typing your search. Apple Watch customers can now use their voice to search for products, buy with 1-Click and build a shopping list on their watch.  \n\nSecure \nAll purchases are routed through Amazon's secure servers. \n\nUniversal \nShop Amazon.ca, Amazon.co.uk, Amazon.de, Amazon.fr, Amazon.com, Amazon.it, Amazon.es, Amazon.cn, Amazon.co.jp or Amazon.in from a single app."
                                                          imImage:[UIImage imageNamed:@"amazon.png"]
                                                    appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/amazon-app-shop-browse-scan/id297606951?mt=8&uo=2"]
                                                           rights:@"© 2015 AMZN Mobile LLC"
                                                         category:@"Shopping"
                                                          company:@"AMZN Mobile LLC"
                                                      releaseDate:@"December 3, 2008"];
        
                AppModel *app10 = [[AppModel alloc] initWithImName:@"Pixduel"
                                                           summary:@"Are you a pop-culture whiz? Outwit your friends on Pixduel!\n\nPixduel is an entertaining and colorful social trivia game with current picture questions about everything in pop culture. Challenge friends and other players in putting your skills to the test!\n\n*HIGHLIGHTS*\n• Loads of fun categories including candy & soda, food & drinks, sports, movies and more! \n• Thousands of high quality image questions written by our Pixduel team.\n• Climb the charts - Compare your knowledge to other top U.S. players.\n• Connect your social media accounts and invite your friends to battle!\n• Create your very own avatar with countless features to choose from.\n• New questions are added daily so Pixduel never gets old!\n\nLet's duel!\n\nwww.feomedia.com\nFB: Pixduel\nTwitter: Pixduel_game"
                                                           imImage:[UIImage imageNamed:@"pixels.png"]
                                                     appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/pixduel/id1029375276?mt=8&uo=2"]
                                                            rights:@"© 2015 FEO Media AB"
                                                          category:@"Games"
                                                           company:@"Pixduel™ - FEO Media"
                                                      releaseDate:@"August 2 1, 2015"];
        
        
        AppModel *app11 = [[AppModel alloc] initWithImName:@"Google Maps"
                                                   summary:@"The Google Maps app for iPhone and iPad makes navigating your world faster and easier. Find the best spots in town and the information you need to get there.\n\n• Comprehensive, accurate maps in 220 countries and territories\n• Voice-guided GPS navigation for driving, biking, and walking\n• Transit directions and maps for over 15,000 cities and towns\n• Live traffic conditions, incident reports, and automatic rerouting to find the best route\n• Detailed information on more than 100 million places\n• Street View and indoor imagery for restaurants, museums, and more\n\n* Some features not available in all countries\n* Continued use of GPS running in the background can dramatically decrease battery life."
                                                   imImage:[UIImage imageNamed:@"googleMaps.png"]
                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/google-maps/id585027354?mt=8&uo=2"]
                                                    rights:@"© Google Inc."
                                                  category:@"Navigation"
                                                   company:@"Google, Inc."
                                               releaseDate:@"December 12, 2012"];
        
        AppModel *app12 = [[AppModel alloc] initWithImName:@"Netflix"
                           summary:@"Subscribe Now on Your iPhone® or iPad®\n\nWatch TV shows and movies recommended just for you, including award-winning Netflix original series, movies, and documentaries. \n \nNetflix has something for everyone. There’s even a safe watching experience just for kids with family-friendly entertainment.\n \nNo commercials. No hidden fees.  Try one month free. You can cancel anytime. \n \nHow does Netflix work?\n \n• Netflix adds TV shows and movies all the time. Browse titles or search for your favorites. \n• The more you watch, the better Netflix gets at recommending TV shows and movies that you’ll love—just for you. \n• You can create up to five individual profiles within a single Netflix account. Profiles allow different members of your household to have their own personalized Netflix experience built around the movies and TV shows they enjoy. \n• Instantly stream on iOS devices or on the web."
                                                   imImage:[UIImage imageNamed:@"netflix.png"]
                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/netflix/id363590051?mt=8&uo=2"]
                                                    rights:@"© 2011 Netflix, Inc."
                                                  category:@"Entertainment"
                                                   company:@"Netflix, Inc."
                                               releaseDate:@"April 1, 2010"];
        
        AppModel *app13 = [[AppModel alloc] initWithImName:@"Pinterest"
                           summary:@"Pinterest is a visual bookmarking tool that helps you discover and save creative ideas. Use Pinterest to make meals, plan travel, do home improvement projects and more.\n\nWith Pinterest you can:\n\n• Plan a project: Home remodels, garden redesigns and other DIYs\n\n• Get creative ideas: Recipes to cook, articles to read, gifts to buy and ways to save money\n\n• Explore a hobby: From comic art and camping, to woodworking and weaving\n\n• Save travel inspiration: Outdoor adventures, family fun, road trips and more\n\n• Find your style: Fashion, home decor, grooming tips and beauty inspiration\n\n• Pin from your mobile browser: Save good things you find around the web"
                                                   imImage:[UIImage imageNamed:@"pinterest.png"]
                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/pinterest/id429047995?mt=8&uo=2"]
                                                    rights:@"© 2015 Pinterest, Inc."
                                                  category:@"Social Networking"
                                                   company:@"Pinterest, Inc."
                                               releaseDate:@"April 28, 2011"];
        
        
        
        AppModel *app15 = [[AppModel alloc] initWithImName:@"Twitter"
                           summary:@"Tweet, Retweet, reply and favorite in a flash. Quickly see recent Tweets and top trends. Share your location, a song, or your thoughts with a flick on the wrist. It's Twitter, but littler.\n_ \n\nTwitter is a free app that lets you connect with people, express yourself, and discover more about all the things you love.\n\nSee what your favorite celebs and athletes are chatting about. Be the first to hear breaking news. Catch a glimpse behind the scenes at concerts, sporting events, and more.\n\nThen join the conversation: Tweet your own text, photos, and video to your followers — and maybe make a few fans along the way.\n\nGet inspired. Be social. Even send private messages to friends. All in real time, as big (and little) things happen, from anywhere you happen to be.\n\nTwitter is now available for Apple Watch."
                                                   imImage:[UIImage imageNamed:@"twitter.png"]
                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/twitter/id333903271?mt=8&uo=2"]
                                                    rights:@"© Twitter, Inc."
                                                  category:@"Social Networking"
                                                   company:@"Twitter, Inc."
                                               releaseDate:@"October 9, 2009"];
        
        AppModel *app16 = [[AppModel alloc] initWithImName:@"musical.ly - your music video community"
                           summary:@"#1 music video community. *** musical.ly makes it easy and fun to create amazing videos and impress your friends.***\n \nHighlights:\n- Select from millions of tracks or use music from your own device.\n- Discover exciting new music and artists.\n- Collaborate with other users with the unique duet function.\n- Edit your videos with free effects and filters, such as slow motion, time lapse, and hyper speed.\n- Share videos directly to Facebook, Instagram, Twitter, Vine, and WhatsApp.\n- Save videos directly to your phone, or mark videos as private so only  you can see them.\n- Find and follow creators from around the globe.\n \nEvery day we feature the best musicallys (music videos). Become a star now!!!\n\nAny feedback? Contact us at info@musical.ly or tweet us @musicallyapp\n\n* Downloadable previews do not use the iTunes API\n\n* Requires iOS 7.0 or later. Compatible with iPhone, iPad, and iPod touch. Optimized for iPhone 4S, iPhone 5，iPhone 5S.  Performance of this app on iPhone 4 and earlier iOS devices is not fine-tuned."
                                                   imImage:[UIImage imageNamed:@"mzstatic.png"]
                                             appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/musical.ly-your-music-video/id835599320?mt=8&uo=2"]
                                                    rights:@"© musical.ly Inc."
                                                  category:@"Photo & Video"
                                                   company:@"musical.ly Inc."
                                               releaseDate:@"April 2, 2014"];
        
         AppModel *app17 = [[AppModel alloc] initWithImName:@"Real Boxing 2 CREED"
                            summary:@"Take the fight to the next level in Real Boxing 2 CREED™ - the official mobile game of the movie CREED™! Train with the legendary Rocky Balboa and become the World Champion in the sequel to the award winning Real Boxing™. Ready for Round 2?\n------------------------\n“Really dang impressive.” - 148Apps\n“I’m excited.” – TouchArcade\n“The sequel looks stunning.” – AppAdvice\n------------------------\nBECOME CREED AND CLAIM YOUR LEGACY\nEnter the ring and fight as Adonis Johnson, the son of Rocky Balboa’s legendary rival Apollo Creed. Challenge the boxing elite, unlock unique CREED themed items, and fight to prove your legacy is more than a name in the official game of the movie CREED - now playing in cinemas!\n\nJOIN AN ENDLESS MMO FIGHTING EXPERIENCE\nChallenge an elite of boxing champions and fight players from around the world, night or day, in single and multiplayer gameplay across hundreds of exciting events, story fights, and tournaments in a never-ending Career Mode.\n\nENGAGE IN FAST PACED ON-THE-RING ACTION\nMaster jabs, hooks, uppercuts, body punches and combine them with devastating Special Punches and Focus abilities creating the ultimate combo to KO your opponent.\n\nCHOOSE YOUR STYLE OF BOXING\nDevelop your boxer’s Strength, Stamina, Speed, and Endurance, level up your abilities, and equip powerful boosts to create your own unique fighting playstyle.\n\nUNLOCK HUNDREDS OF POWERFUL ITEMS\nProgress and gain access to a huge number of unique, upgradable and customizable gear, enhancing fighting stats and abilities of your boxer.\n\nCREATE THE ULTIMATE FIGHTER\nUse a robust set of options to create your own boxer – from body mass, muscle sculpture, and attitude, to details as small as eye color and nose shape.\n\nCONNECT WITH FRIENDS\nInvite a friend and duke it out in real-time PVP action to find out who’s the best boxer right here and now. Fight for the quickest KO and best scores across a variety of leaderboards. Never stop competing!\n\nPLAY EXCITING MINIGAMES\nTrain your fighter in exciting minigames with Rocky Balboa and try your luck in the Daily Lottery for a chance to win awesome rewards.\n\nFEEL THE POWER OF UNREAL ENGINE 4\nWitness jaw-dropping graphics fully utilizing the power of Unreal Engine 4 technology to create the most dynamic and visually stunning MMO fighting game experience.\n\nImportant information: Real Boxing 2 CREED™ is best experienced while playing on high-end devices. The game requires a persistent Internet connection to access all features.\n\nOfficial Website: www.realboxing2.com\nFollow Real Boxing 2 CREED™ on Facebook: www.facebook.com/realboxing\nTerms of Service: www.realboxing2.com/tos/\n\nJoin the club, create your fighter and start boxing with Real Boxing 2 CREED – The Ultimate Fighting Game."
                                                    imImage:[UIImage imageNamed:@"realBoxing.png"]
                                              appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/real-boxing-2-creed/id932779605?mt=8&uo=2"]
                                                     rights:@"© 2015 Vivid Games S.A. Real Boxing is a trademark of Vivid Games. CREED © 2015 Metro-Goldwyn-Mayer Pictures Inc. and Warner Bros. Entertainment Inc."
                                                   category:@"Games"
                                                    company:@"Vivid Games S.A."
                                                releaseDate:@"November 18, 2015"];
        
         AppModel *app18 = [[AppModel alloc] initWithImName:@"Uber"
                            summary:@"Get a reliable ride in minutes with the Uber app—no reservations or waiting in taxi lines. \n\nFrom low-cost to premium, every ride option feels like an upgrade to the everyday.\n\nCreate your account using a credit card or PayPal, and your fare will be charged automatically at the end of your ride. You can also pay with cash in select cities. After your trip, we’ll email you a receipt.\n\nSee if Uber is available in your city at https://www.uber.com/cities\nFollow us on Twitter at https://twitter.com/uber\nLike us on Facebook at https://www.facebook.com/uber"
                                                    imImage:[UIImage imageNamed:@"uber.png"]
                                              appCompanyWeb:[NSURL URLWithString:@"https://itunes.apple.com/us/app/uber/id368677368?mt=8&uo=2"]
                                                     rights:@"© Uber Technologies Inc."
                                                   category:@"Travel"
                                                    company:@"Uber Technologies, Inc."
                                                releaseDate:@"May 20, 2010"];
        
         AppModel *app19 = [[AppModel alloc] initWithImName:@"WhatsApp Messenger"
                            summary:@"WhatsApp Messenger is a messaging app available for iPhone and other smartphones. WhatsApp uses your phone’s Internet connection (4G/3G/2G/EDGE or Wi-Fi, as available) to message and call friends and family. Switch from SMS to WhatsApp to send and receive messages, calls, photos, videos, and Voice Messages. First year FREE!* (WhatsApp may charge thereafter, current price is $0.99 USD/year).\n\nWHY USE WHATSAPP: \n\n• NO ADDITIONAL FEES: WhatsApp uses your phone’s Internet connection (4G/3G/2G/EDGE or Wi-Fi, as available) to message and call friends and family, so you don’t have to pay for every message or call.*\n\n• MULTIMEDIA: Send and receive photos, videos, and Voice Messages. \n\n• WHATSAPP CALLING: Call your friends and family using WhatsApp for free, even if they’re in another country. WhatsApp calls use your phone’s Internet connection rather than your cellular plan’s voice minutes.* (Note: you can’t access 911 and other emergency service numbers through WhatsApp). \n\n• GROUP CHAT: Enjoy group chats with your contacts so you can easily stay in touch with your friends or family.\n\n• WHATSAPP WEB: You can also send and receive WhatsApp messages right from your computer’s browser.\n\n• NO INTERNATIONAL CHARGES: There’s no extra charge to send WhatsApp messages internationally. Chat with your friends around the world and avoid international SMS charges.* \n\n• SAY NO TO USERNAMES AND PINS: Why bother having to remember yet another username or PIN? WhatsApp works with your phone number, just like SMS, and integrates seamlessly with your phone’s existing address book. \n\n• ALWAYS LOGGED IN: With WhatsApp, you’re always logged in so you don’t miss messages. No more confusion about whether you’re logged in or logged out. \n\n• QUICKLY CONNECT WITH YOUR CONTACTS: Your address book is used to quickly and easily connect you with your contacts who have WhatsApp so there’s no need to add hard-to-remember usernames.\n\n• OFFLINE MESSAGES: Even if you miss your notifications or turn off your phone, WhatsApp will save your recent messages until the next time you use the app.\n\n• AND MUCH MORE: Share your location, exchange contacts, set custom wallpapers and notification sounds, email chat history, broadcast messages to multiple contacts at once, and more!\n\n*Data charges may apply. Contact your provider for details. \n\n--------------------------------------------------------- \nWe’re always excited to hear from you! If you have feedback, questions, or concerns, please email us at: \niphone-support@whatsapp.com \n\nor follow us on twitter: \n\nhttp://twitter.com/WhatsApp\n@WhatsApp\n---------------------------------------------------------\n\nNote: WhatsApp is a telephony app, so iPod and iPad are not supported devices."
                                                    imImage:Nil
                                              appCompanyWeb:Nil
                                                     rights:@"© 2015 WhatsApp Inc."
                                                     category:@"Social Networking"
                                                    company:@"WhatsApp Inc."
                                                releaseDate:@"May 3, 2009"];
        
        
        
          AppModel *app20 = [[AppModel alloc] initWithImName:@"Free Music - Mp3 Player Streaming & Playlist Manager & Streamer Pro"
                             summary:@"free•music by HDapps, Inc. is for music lover who anticiapating in streaming covers and parodies of great music worldwide.\n\nfree•music by HDapps, Inc. does not allow download music functionality, and/or include any form of offline playback.\n\n====================\n\nfree•music has been officially acquired by HDapps, Inc. If you have any questions regarding the app, please do not hesitate to contact us via email at legal@hdapps.io \n\nor visit our website http://www.hdapps.io \nand our fanpage http://www.facebook.com/hdapps.inc \n\nfor optional contact information.\n\nThank You!\n\nHDapps Team"
                                                     imImage:Nil
                                               appCompanyWeb:Nil
                                                      rights:@"Copyright © 2015 HDapps Inc. All rights reserved."
                                                    category:@"Entertainment"
                                                     company:@"HDapps Inc."
                                                 releaseDate:@"October 30, 2015"];
        
        
        
        
        
        
        
        
        
        
        
                           
        
        
        
        
                           
                            
        
                
                
                
                
               self.appArrays = @[app1, app2, app3, app4, app5, app6, app7, app8, app9, app10,app11, app12, app13,  app15, app16, app17, app18, app19, app20];
    }

    
        
//        NSString *string = [NSString stringWithFormat:@"https://itunes.apple.com/us/rss/topfreeapplications/limit=20/json"];
//        
//        NSURL *url = [NSURL URLWithString:string];
//        
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        
//        AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//        operation.responseSerializer = [AFJSONResponseSerializer serializer];
//        
//        [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//            
//            // 3
//            
//            
//            NSDictionary *dic = [responseObject objectForKey:@"feed"];
//          
//            NSArray *entry = [dic objectForKey:@"entry"];
//            
//      
//            
//          
//                
//                for (NSDictionary *dic in entry) {
//                    
//                    
//                   AppModel *model = [[AppModel alloc] initWithDictionary:dic];
//                   
//                    NSLog(@"model: %@", model.imName);
//                    self.appArrays = [NSMutableArray arrayWithObject:model];
//                   
//                   NSLog(@"%@", self.appArrays);
//                
//                 
//                        }
//            
//            
//            
//                
//                
//                
//                
//            
//          
//            
//        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//            
//            // 4
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
//                                                                message:[error localizedDescription]
//                                                               delegate:nil
//                                                      cancelButtonTitle:@"Ok"
//                                                      otherButtonTitles:nil];
//            [alertView show];
//        }];
//        
//        // 5
//        [operation start];
//    }
    
    
    return self;
}





-(AppModel *)appCounAtIndex: (NSUInteger) index{
    
    return [self.appArrays objectAtIndex:index];
}

@end
