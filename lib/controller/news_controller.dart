import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/news_model.dart';

class NewsController extends GetxController {
  bool is10AM =true;
  bool is3PM =true;
  bool is8PM =true;
  bool enableExpandedAll =false;
  bool isAllExpanded=false;
  bool isAllCollapsed=false;
  List<Widget> expandedNewsWidget=[];
  List<Widget> descriptionWidgetList=[];
  List<NewsModel> data10AMList=[
    NewsModel(
          headline: "SCOTUS Case May Undo Jan 6 Charges",
          imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6578fc467919ade6bd7a7f72_Blake%2C%20Wm.%20When%20the%20Morning%20Stars%20Sang%20Together.%201805..jpg",
          imageName: "Blake, Wm. When the Morning Stars Sang Together. 1805.",
          description: ["The Supreme Court announced it will hear an appeal that could reverse hundreds of charges from the events of January 6, 2021, including ones against Trump. The justices will review a case brought by Joseph Fischer, who has been charged with obstructing an official congressional proceeding on that day. Fischer says the crime he’s charged with is meant for people tampering with evidence, enacted as part of the Enron corruption scandal, and not for people who participated in a riot. A U.S. District Court agreed with Fischer and two other defendants charged with the same crime, saying they had to have taken some action involving evidence. Over 300 other defendants have been charged with this crime, and if the appeal goes through, their charges could also be reversed. Trump is also charged with conspiracy to obstruct an official proceeding, so the appeal’s ramifications could extend as far as him."],
          source: "https://www.usatoday.com/story/news/politics/2023/12/13/supreme-court-appeal-jan-6-trump-lang-fischer-miller/71846316007/",
    ),
    NewsModel(
      headline: "Puma Ends Israel Sponsorship",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6578993c211af2206ab29bef_Blake%2C%20Wm.%20Europe%20a%20Prophecy.%201804..jpg",
      imageName: "Blake, Wm. Europe a Prophecy. 1804.",
      description: ["Puma will terminate its sponsorship of the Israeli national soccer team, pursuing a new strategy of “better” partnerships. According to Puma, the decision is based on commercial factors and participation in major tournaments, not because of the ongoing war. The company also emphasizes the move was determined at the end of 2022, yet the company technically has until 2024, when the contract in Israel expires. Thus, many on social media are seeing this as secretly being motivated by the outcry over Israel’s alleged war crimes in Gaza. Pro-Palestinian activists have celebrated the move as a victory for the Boycott, Divestment, and Sanctions (BDS) movement. BDS has long criticized Puma for sponsoring the Israel Football Association, alleging involvement in violations of international law."],
      source: "https://www.newsweek.com/puma-ending-israel-sponsorship-sparks-pro-palestinian-activist-celebration-1851635"
    ),
    NewsModel(
      headline: "College Graduates Can’t Find Jobs",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579e8d6756cdb5223fb574e_Blake%2C%20Wm.%20For%20the%20Sexes-%20The%20Gates%20of%20Paradise%2C%20Object%206.%201793..jpg",
      imageName: "Blake, Wm. For the Sexes- The Gates of Paradise, Object 6. 1793.",
      description: ["Bloomberg followed several students of the class of 2024, soon to graduate, who say they can’t find jobs in sectors like tech and finance. One student, Mikael Rahmani, a Boston University senior, is facing difficulties in finding a job in finance despite having good grades, internships, and extracurricular activities. Rahmani applies to about fifteen jobs per week but has yet to secure a job. Other seniors interviewed by Bloomberg reported similar results, saying their internship prospects in previous years don’t align with their bad luck in the job market. This trend comes as white-collar companies navigate an uncertain economy and higher-than-usual interest rates, spurring layoffs and reduced hiring. Career services at even the best universities say full-time recruitment is strangely quiet, and most interns are not receiving job offers. Kory Kantenga, an analyst at LinkedIn, noted that many of these graduates are finding it difficult to match a job with their skillset: “Are you going to end up as a barista with a bachelor’s degree?” This all comes as nearly half of all U.S. companies plan to eliminate Bachelor’s degree requirements, according to a November survey of 800 employers, including major corporations like Walmart and IBM. In other words: if you’re in college, you better graduate with a useful degree, or you’ll be competing with people who didn’t waste 50 racks a year to go to mid frat parties."],
      source:"https://archive.is/tgyFc"
    ),
    NewsModel(
      headline: "Tesla Recalls Almost All U.S. Cars",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579e8fc08e2c41ea62b1008_Blake%2C%20Wm.%20Beatrice%20Addressing%20Dante%20from%20the%20Car.%201824..jpg",
      imageName: "Blake, Wm. Beatrice Addressing Dante from the Car. 1824.",
      description:["Tesla is recalling nearly all of its vehicles sold in the U.S. to address a software issue and a defective system in their Autopilot feature. The recall of more than two million follows a two-year government investigation into crashes involving Autopilot, some of which were fatal. New software updates will increase driver alerts and limit Autopilot's use in certain areas to make sure the driver is paying attention. The recall affects Tesla models Y, S, 3, and X made between 2012 and 2023. Tesla shares dropped over 3% after the recall announcement. Philip Koopman, professor at Carnegie Mellon University: “The compromise is disappointing because it does not fix the problem that the older cars do not have adequate hardware for driver monitoring.” Michael Brooks, executive director of the Center for Auto Safety: "
      "It’s not answering the question of why are Teslas on Autopilot not detecting and responding to emergency activity?"],
      source:"https://apnews.com/article/tesla-autopilot-recall-driver-monitoring-system-8060508627a34e6af889feca46eb3002"
    ),
    NewsModel(
      headline: "‘Vultures’ Is Available for Pre-Order",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579eb685e69152ea9cad915_IMG_0587.jpg",
      imageName: "",
      description: ["Ye and Ty Dolla \$ign’s “Vultures” album is now available for pre-order on streaming platforms, with a release date of Friday, December 15. Eighteen tracks comprise the album, with the titular track “Vultures,” featuring Bump J and Lil Durk, already available for listening."],
      source:"https://le.ffm.to/vultures1"
    ),
    NewsModel(
      headline: "Luxury Brands Embrace Banality",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579e93864f16bd0b6804a87_Blake%2C%20Wm.%20Joseph%20of%20Arimathea%20Among%20the%20Rocks%20of%20Albion.%201773..jpg",
      imageName: "Blake, Wm. Joseph of Arimathea Among the Rocks of Albion. 1773.",
      description: ["Brands like Bottega Veneta, Gucci, and Louis Vuitton are embracing mundane, everyday moments in their latest campaigns, a departure from the elegance and glamor that typically characterize the campaigns. In Bottega Veneta’s Pre-Spring 2024 campaign called “Readymade,” A\$AP Rocky and Kendall Jenner are pictured carrying groceries, pumping gas, drinking coffee, and jogging. As noted by The Business of Fashion, the pictures weren’t produced by a fashion photographer but by paparazzi, who first published the pictures in TMZ. In September, Gucci also released paparazzi-style images featuring Bad Bunny and Kendall Jenner in the airport with Gucci luggage. And in Pharrell’s first Louis Vuitton campaign, Rihanna carried a coffee cup while wearing a Speedy bag, almost like she was running an errand. Riccardo Zanola, the art director behind several of Gucci’s latest campaigns: People want to be related to. We’ve been dreaming too much about other places, other spaces, other worlds."],
      source:"https://1ft.io/proxy?q=https%3A%2F%2Fwww.businessoffashion.com%2Farticles%2Fmarketing-pr%2Fwhy-banal-is-big-in-fashions-latest-campaigns%2F"
    ),
    NewsModel(
      headline: "Draymond Green Smacks Jusuf Nurkić",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579e95e4e16942065fbce3d_Blake%2C%20Wm.%20The%20Stygian%20Lake%20with%20the%20Ireful%20Sinners%20Fighting.%201824..jpg",
      imageName: "Blake, Wm. The Stygian Lake with the Ireful Sinners Fighting. 1824.",
      description: ["Draymond Green was ejected from a game against the Phoenix Suns last night after he took a swing at Jusuf Nurkić. This situation came in the third quarter, as Green and Nurkić competed for position on an in-bounds play. For seemingly no reason, Green then spun around and slapped Nurkić across the face. This comes just two weeks after Green returned from a five-game for putting Rudy Gobert in a chokehold. Reactions on social media varied, with some finding it offensive and others finding it ridiculously hilarious. One user on X: “nigga got a better wwe mixtape than hoops.”"],
      source:"https://twitter.com/big_business_/status/1734795892161409067"
    ),
    NewsModel(
      headline: "Israel Soldiers Destroy Private Homes",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579e97f062d7fe1cac2e114_Blake%2C%20Wm.%20The%20Sculls%20of%20Lieu.t.%20Leppar%2C%20%26%20Six%20of%20his%20Men.%201796..jpg",
      imageName: "Blake, Wm. The Sculls of Lieut. Leppar, & Six of his Men. 1796.",
      description: ["Viral videos and photos have circulated of Israeli soldiers in Gaza destroying toys, burning food and water supplies, and moving Muslim prayer rugs into a bathroom. These actions are often uploaded by the soldiers themselves and have raised international concerns. The Israeli military blames Hamas for the civilian casualties, citing their tactics of operating in crowded neighborhoods and using human shields. A video posted by Israeli media personality Yinon Magal on X reveals soldiers dancing in a circle in Gaza, singing a song that includes the words, “Gaza we have come to conquer. ... We know our slogan – there are no people who are uninvolved.” Yinon Magal: “These are my fighters, they’re fighting against brutal murderers, and after what they did to us, I don’t have to defend myself from anyone.” Dror Sadot, spokeswoman for the Israeli human rights group B'Tselem: “The dehumanization from the top is very much sinking down to the soldiers."],
      source:"https://apnews.com/article/israel-hamas-soldiers-gaza-viral-videos-idf-072894147302535cc9632863888e53a4"
    ),
    NewsModel(
      headline: "Poll: 74% Of U.S. Fooled by Deepfakes",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579ea220e4be32d97752dc3_Blake%2C%20Wm.%20The%20Book%20of%20Los%2C%20object%201.%201795..jpg",
      imageName: "Blake, Wm. The Book of Los, object 1. 1795.",
      description: ["A new survey of 2,000 U.S. adults finds that 74% can no longer tell what’s real or fake on the Internet due to the rapid progress of AI. As a result, adults assume only 37% of the content they see online is “real,” meaning free of AI, photoshop, and editing. 71% of Americans believe that over the next decade, it will be increasingly challenging to determine what’s real or not."],
      source:"https://studyfinds.org/deepfake-americans-real-or-fake/"
    ),
    NewsModel(
      headline: "Ancient Roman Baths Found in Croatia",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/6579ea495ce78c2e501475ea_Blake%2C%20Wm.%20Jerusalem%20The%20Emanation%20of%20The%20Giant%20Albion%2C%20Object%201.%201801..jpg",
      imageName: "Blake, Wm. Jerusalem The Emanation of The Giant Albion, Object 1. 1801.",
      description:["Archaeologists trying to install an elevator in a Croatian museum were caught off-guard when they uncovered Roman baths under the museum. Amazingly, the baths are in well-preserved condition and include a pool, mosaic floors, ancient underfloor heating, an oil and grape press, and a furnace. During the Roman Empire, communal bathing was common, acting as a space for socializing and relaxation. These baths are believed to be part of Diocletian’s Palace, built at the end of the third century for the Roman emperor’s retirement."],
      source:"https://news.artnet.com/art-world/roman-baths-split-croatia-2406697"
    )
  ];
  List<NewsModel> data3PMList=[
    NewsModel(
        headline: "YZY × ГОША РУБЧИНСКИЙ",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a2ba4172bd96c7a27f1f3_IMG_4286%201.jpg",
      imageName: "Blake, Wm. The Great Red Dragon and the Woman Clothed in Sun. 1806-1809.",
      description: ["LOS ANGELES, CA.—YEEZY welcomes Gosha Rubchinskiy as its new Head of Design today. The arrival of this legendary Russian designer at YEEZY, the pre-eminent global brand in music and fashion, is a milestone in design history."],
      source: "https://yeezy.com"
    ),
    NewsModel( headline: "Elon Plans New University in Austin",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a0eb383af02b09092a233_Blake%2C%20Wm.%20Age%20Teaching%20Youth.%201785..jpg",
      imageName: "Blake, Wm. Age Teaching Youth. 1785.",
      description: ["Elon Musk is planning to start a university in Austin, Texas, according to tax filings from his charity The Foundation.<br />‍<br />Seeded with \$100 million from Musk, the new institution will begin with a STEM-focused primary and secondary school that has an initial class of 50 students.<br />‍<br />The ultimate goal is expanding operations “to create a university dedicated to education at the highest levels.”<br />‍<br />The university will employ “experienced faculty” and feature a “hands-on learning experience including simulations, case studies, fabrication/design projects and labs.”<br />‍<br />The timing of this news is notable—it comes as top schools like Harvard and UPenn are battling accusations of antisemitism and declining educational standards that many say have harmed their world-renowned reputation.<br />‍<br />The question has always been if a new, top-notch university can emerge, and time will tell if Musk delivers."],
      source: "https://archive.is/KJWmW"
    ),
    NewsModel( headline: "Southwest Airlines Rewards Obesity",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a2099855fc5284a21793c_Blake%2C%20Wm.%20Frontispiece%20to%20The%20Elephant%2C%20Ballad%20the%20First.%201802..jpg",
      imageName: "Blake, Wm. Frontispiece to The Elephant, Ballad the First. 1802.",
      description:[ "Southwest Airlines' “customer of size” policy offers complimentary extra seats for fat passengers, garnering praise from overweight influencers.\n        Passengers can request an additional seat or 2 at no extra cost if their body extends beyond the armrest, even for fully booked flights.\n        Overweight customers are the top priority, as there is one public case where 3 passengers were removed from an “overbooked flight” to accommodate a \"customer of size,\" despite spending \$620.72 on tickets.\n        Critic: “Please help me understand. Why do I have to spend the night without any accommodations in Baltimore because an oversized person didn’t purchase a second ticket?”\n        Jae’lynn Chaney, Plus-Sized Travel Expert: “Super fat is how we identify. There’s a spectrum of fatness. And as a ‘super fat’ individual you start needing different accommodations. The Southwest customer size policy helps many travelers offset the disproportionate costs that we incur because of needing extra room.”"],
      source: "https://nypost.com/2023/12/13/news/southwest-airlines-is-praised-for-customers-of-size-policy/amp/"
    ),
    NewsModel( headline: "Google, Apple Lose Grip on App Stores",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a0f4ecd1c93c274f4d98f_Blake%2C%20Wm.%20The%20Progress%20of%20Poesy.%201797..jpg",
      imageName: "Blake, Wm. The Progress of Poesy. 1797.",
      description: ["A federal jury in San Francisco on Monday found that Google’s app store was an illegal monopoly that the company used to prevent competition.\n        This comes just months after Google settled with a coalition of state attorneys general, who also alleged Google’s store was breaking antitrust laws.\n        In South Korea and the Netherlands, legal challenges have been mounted against the 30% fees that Google and Apple charge on app store transactions.\n        Apple and Google make billions of dollars a year funneling users to make purchases through their app stores, and these legal challenges could threaten their dominance for the first time."],
      source: "https://www.msn.com/en-us/news/technology/google-and-apple-s-iron-grip-on-app-stores-is-slipping/ar-AA1lrkFY"
    ),
    NewsModel( headline: "Poll: Majority of Couples Meet Online",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a0f9f5c2c914e85ff1994_Blake%2C%20Wm.%20The%20Angel%20of%20the%20Divine%20Presence%20Clothing%20Adam%20and%20Eve%20with%20Coats%20of%20Skins.%201780..jpg",
      imageName: "Blake, Wm. The Angel of the Divine Presence Clothing Adam and Eve with Coats of Skins. 1780.",
      description: ["A graph depicting how couples met in the U.S. from 1950 to 2020 has gone viral on social media, shocking users with the changes over the years.\n        In 2020, less than 10% of American couples met through friends, compared to nearly 30% in 2010.\n        This decline corresponded with a rapid increase in U.S. couples meeting online, with over 50% in 2020, doubling from 2010.\n        Other ways couples meet, such as work, bars, school, neighbors, and college, have all declined as well, sinking all below 10%.\n        One user captioned the graph: “This is catastrophic.”\n        In 2023, 70% of couples met through online dating, according to Forbes.\n        This all comes as 45% of men aged 18 to 25 say they have never approached a woman in person."],
      source: "https://twitter.com/ichthys30/status/1734953685451460712"
    ),
    NewsModel( headline: "Sneakerheads Stunned by Ross Prices",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a13a42f18aef113ce817d_Blake%2C%20Wm.%20Enoch%20Walked%20with%20God.%201780..jpg",
      imageName: "Blake, Wm. Enoch Walked with God. 1780.",
      description: ["Social media users are shocked that “White Cement Reimagined” Air Jordan 3s are selling for just \$85 at Ross.\n        The sneaker was released in March for \$210, and multiple users on X have posted pictures from Ross showing the discounted price tag, seemingly in disbelief.\n        A user said the store told him only a limited number of pairs were available, including in sizes 11, 12, and 17.\n        One user: “MAN ROSS HAS BEEN GETTING ONE OF THE BEST AIR JORDANS OF 2023! AIR JORDAN 3 REIMAGINED HAVE BEEN POPPING UP AT MULTIPLE ROSS LOCATIONS.”"],
      source: "https://www.complex.com/sneakers/a/victor-deng/air-jordan-3-white-cement-reimagined-ross-stores"
    ),
    NewsModel( headline: "DeSantis Surrogate Embarrassed on TV",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a0fb7262ca162f45dbc45_Blake%2C%20Wm.%20The%20First%20Book%20of%20Urizen%2C%20object%203.%201794..jpg",
      imageName: "Blake, Wm. The First Book of Urizen, object 3. 1794.",
      description: ["Dave Rubin, a washed-up podcaster who purchased both his children earlier this year, appeared on Bill Maher’s show, where he was grilled for his support for DeSantis as president.\n        Maher asked Rubin: “I assume if [Trump] is the nominee, we’ll vote for this.”\n        Rubin ignored the question, responding, “I want Ron DeSantis to be president—,” with Maher interrupting, “I know, but it’s going to be Trump.”\n        Rubin: “We don’t know.”\n        Maher: “So he’s going to make up 41 points?”\n        Rubin: “Well 41 points, I mean I look at these polls, I mean they’re like—”\n        Maher: “Okay, who’s lying now? You think DeSantis is going to beat Trump for the nomination?”\n        Many speculate Rubin is being paid by the DeSantis campaign, simply for the reason that no reasonable person would willingly support a man who wears heels to look taller."],
      source: "https://twitter.com/_johnnymaga/status/1734756068369023432"
    ),
    NewsModel( headline: "Man Tries to Interview Tourettes Girl",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a10075d1358c3d6881a99_Blake%2C%20Wm.%20Whilst%20Surfeited%20Upon%20Thy%20Damask%20Cheek.%201805..jpg",
      imageName: "Blake, Wm. Whilst Surfeited Upon Thy Damask Cheek. 1805.",
      description: ["Chris Cuomo interviewed a famous TikToker who has Tourette’s, and he couldn’t control his laughter as the girl told him: “Go fuck yourself, Chris ass bunny, old biscuit fat ass.”\n        Bayen Dupree has over nine million followers on TikTok, where she uses her platform to educate people about Tourette’s.\n        Cuomo brought her on as a guest, asking her at the start of the interview, “What do you hope you can do by taking the risks that you take?”\n        Throughout the interview, Dupree had various bursts of expletives, so much so that Cuomo began laughing less than two minutes in. \n        “I obviously go to the gym and I wear headphones and that's also a very big factor in how... fuck off. Fuck Collin, fuck that bitch,” she said later on.\n        Cumo showed her sincere gratitude at the end: “I gotta go to phone calls because they’re blowing up with support for you. Bayen Dupree, thank you for what you’re doing.”"],
      source: "https://twitter.com/collinrugg/status/1734936664408244553?s=46&t=lV1JRlKkePuCJV_o12ezeg"
    ),
    NewsModel( headline: "Polish Lawmaker Extinguishes Menorah",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a1149b02df358ac276814_Blake%2C%20Wm.%20For%20The%20Sexes%2C%20The%20Gates%20Of%20Paradise%20object%209.%201793..jpg",
      imageName: "Blake, Wm. For The Sexes, The Gates Of Paradise object 9. 1793.",
      description: ["A member of parliament in Poland went viral yesterday for extinguishing a lit menorah in the country’s legislative building, and he has since explained his actions in a speech.\n        Speaking to other members of parliament, Grzegorz Braun said he is “restoring normalcy and balance, putting an end to acts of Satanic, Talmudic and racist triumphalism.”\n        He emphasized that “there can be no place for acts of racist, tribal, wild, Talmudic cults.”\n        The parliament’s chairman then told the Honorable Braun that he had “seriously disturbed the peace or order,” and that if he insults “followers of other religions” again, he will be excluded from proceedings.\n        Poland’s newly-elected prime minister Donald Tusk said it “can never happen again.”"],
      source: "https://www.cbsnews.com/news/poland-grzegorz-braun-menorah-candle-poland-parliament-fire-extinguisher/"
    ),
    NewsModel( headline: "Students Design Homes to Revive City",
      imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a1045a70db4dbb7097344_Blake%2C%20Wm.%20Saint%20Peter%20and%20Saint%20James%20with%20Dante%20and%20Beatrice%20and%20with%20Saint%20John%20Also.%201824..jpg",
      imageName: "Blake, Wm. Saint Peter and Saint James with Dante and Beatrice and with Saint John Also. 1824.",
      description: ["Architecture students at Penn State are using 3D printing to revitalize a city that has been in decline.\n        Oil City, Pennsylvania, is where innovations in petroleum began in the 1800s, turning the city into a bustling economic nexus.\n        Today, however, the oil companies that supported the town’s economy and infrastructure in its early days have moved away, leaving the town in a gradual state of decline.\n        Selina Pedi-Smith, a community developer in the region: “The smaller towns have been in steady decline since then.”\n        In a mission to revitalize the city, Pedi-Smith reached out to the architecture school at Penn State.\n        One of Penn State’s initiatives right now is to use concrete to 3D print sustainable, affordable housing, and Pedi-Smith saw that technology as the perfect approach to reviving Oil City.\n        The school identified a plot of land in the city to be used as a case study in a class for how 3D-printed concrete homes could bolster the economy.\n        Students were divided into groups, with each creating different designs, all focusing on community engagement and tourism.\n        They presented their final designs to a jury of reviewers in December, and Pedi-Smith said she will take inspiration from each project as she continues her efforts to restore the city.\n        Trevor Klatt, student: “Resilient housing is very important, especially in a housing crisis that is continuously getting worse. We always need more houses.”"],
      source: "https://www.psu.edu/news/arts-and-architecture/story/architecture-students-focus-concrete-3d-printing-help-revitalize-oil/"
    )
  ];
  List<NewsModel> data8PMList=[
  NewsModel(headline: "College Democrats Break With Biden",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a784e7544bcb76197ab85_IMG_0156%201.jpg",
    imageName: "Blake, Wm. America a Prophecy, object 12. 1795.",
    description: [
      "The College Democrats of America, the official student arm of the Democratic Party, has called for a ceasefire in the Middle East, a request Biden has routinely denied to support.",
      "In a press release today, the student organization says: “The College Democrats of America firmly believe that all human life is precious, and the targeting of civilians is a violation of international humanitarian law. Hence, we strongly condemn the violence that has claimed the lives of 16,500+ Palestinians and 1,200+ Israelis, including Americans, and wounded thousands more since October 7, 2023.”",
      "The group then listed a series of demands, including the release of all hostages from Hamas, an immediate and lasting ceasefire, and the International Criminal Court holding perpetrators of atrocities accountable.",
      "Biden has consistently refused to call for a ceasefire, despite even members of his own party and White House staff pleading with him to do so. That’s come at a cost—a Pew Research Center survey from last week found 80% of voters under the age of 30 disapprove of his handling of the conflict."
    ],
    source: "https://twitter.com/CollegeDems/status/1735021194032677110"
  ),
  NewsModel(headline: "Computer Will Simulate Human Brain",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a70cffe62ca110a288e4d_Blake%2C%20Wm.%20Christ%20in%20the%20sepulchre%2C%20guarded%20by%20angels%27.%20Great%20Britain.%201808..jpg",
    imageName: "Blake, WM. Christ in the Sepulchre, Guarded by Angels’. Great Britain. 1808.",
    description: [
      "Australian researchers are working with Intel and Dell to engineer a giant supercomputer that can simulate the human brain.",
      "The computer, called DeepSouth, will be capable of emulating networks of spiking neurons at a whopping 228 trillion synaptic operations per second, matching the estimated rate at which the human brain completes operations.",
      "This means scientists could receive an unparalleled idea of how the human brain operates, providing answers to century-long mysteries.",
      "Expected to be operational in April of next year, DeepSouth’s revelations into the human brain would aid researchers in engineering AI that match the human brain’s intelligence and operations.",
      "Ralph Etienne-Cummings, computer engineering professor: “At the end of the day there’s two types of researchers who will be interested in this — either those studying neuroscience or those who want to prototype new engineering solutions in the AI space.”"
    ],
    source: "https://futurism.com/the-byte/scientists-computer-neural-human-brain"
  ),
  NewsModel(headline: "Twitch Now Allows ‘Artistic’ Nudity",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a705874ca6f8a346fa954_Blake%2C%20Wm.%20Eve%20Tempted%20by%20the%20Serpent.%201799..jpg",
    imageName: "Blake, Wm. Eve Tempted by the Serpent. 1799.",
    description: [
      "Twitch, once a platform to make money from live-streaming games, is now appeasing its growing female user base by allowing for “artistic” nudity.",
      "Specifically, content that “deliberately highlights breasts, buttocks or pelvic region,” is now allowed.",
      "That’s not all—certain dances like “twerking, grinding, and pole dancing” are approved now.",
      "Critics say Twitch is collapsing into a full-fledged porn site, questioning what incentives, if any, men have to become painstakingly good at a game if women can just show their tits and make bank."
    ],
    source: "https://www.dexerto.com/entertainment/twitch-updates-sexual-content-guidelines-amid-topless-meta-backlash-2430357/"
  ),
  NewsModel(headline: "Australia Bans Engineered Stone",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a704417a34088f832743d_Blake%2C%20Wm.%20Joseph%20of%20Arimathea%20Preaching.%201794..jpg",
    imageName: "Blake, Wm. Joseph of Arimathea Preaching. 1794.",
    description: [
      "Australia has become the first country to ban engineered stone, a material largely used for kitchen benches and bathrooms. ",
      "Effective July 2024, The decision follows a significant rise in silicosis cases among hundreds of workers handling the material largely used for kitchen benches and bathrooms.",
      "Dr. Ryan Hoy, respiratory physician: “Some of these people with silicosis, they're extremely sick... we have a condition which caused them to become so short of breath it's hard to do just normal daily activities. We really need to change the ways to identify problems at work, and act before people become sick.”",
      "Liam O'Brien, assistant secretary of the Council of Trade Unions: \"Engineered stone is a fashion product that is killing the workers who make it. With alternatives readily available, why are we risking the lives of tradies for a fashionable finish in our kitchens?\"",
      "Caesarstone, a large engineered stone manufacturer, said it was \"deeply disappointed\" by the decision: “Most importantly, the decision fails to address the real cause of rising silicosis rates – poor compliance with and enforcement of safety standards.”"
    ],
    source: "https://www.abc.net.au/news/2023-12-13/engineered-stone-ban-discussed-at-ministers-meeting/103224362"
  ),
  NewsModel(headline: "NYT Is Saying ‘Nigger’ Less Than Ever",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a78468f1de2d12e3e0a13_IMG_0155%201.jpg",
    imageName: "Blake, Wm. The Celebrated Graman Quacy., object 16. 1796.",
    description: [
      "Matt Bruenig, the director of the People’s Policy Project think tank, has shared a graph that depicts The New York Times’ usage of “nigger” from 2000 to 2023.",
      "The findings are astonishing: in 2000, nearly 50 articles included the word, compared to just 4 in 2023.",
      "Bruenig said that if the trend continues, the NYT will officially hit nigger-zero by 2027.",
      "The paper of record hit its record “nigger” use in 2002, with over 50 articles including the sacred word."
    ],
    source: "https://twitter.com/MattBruenig/status/1735097612670230902"
  ),
  NewsModel(headline: "‘Antisemitism’ Shakedown Costs X \$1.5B",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a6c87674a4d7e50374d8a_Blake%2C%20Wm.%20Jerusalem%20The%20Emanation%20of%20The%20Giant%20Albion%20%2C%20object%2041.%201821..jpg",
    imageName: "Blake, Wm. Jerusalem The Emanation of The Giant Albion, object 41. 1821.",
    description: [
      "Elon Musk’s X is facing the consequences of free speech, as Bloomberg reports the platform has already lost \$1.5 billion from ad boycotts.",
      "The boycotts were spurred by claims that major corporations like Disney and Walmart were advertising next to “antisemitic” content.",
      "In response, Elon Musk filed a “thermonuclear” lawsuit against the company behind the claims: a progressive watchdog organization called Media Matters.",
      "X says Media Matters manipulated the platform to make it seem like these ads were placed next to the content when they never were.",
      "Musk has said his ultimate goal is to reduce reliance on advertising by moving to subscriptions, such as X Premium.",
      "For now, advertisers hold the power—creators are voicing concerns that the boycotts have hindered their ability to profit on the platform, to which Musk responded that there’s “not much we can do if advertisers boycott or reduce spend on our platform.”"
    ],
    source: "https://arstechnica.com/tech-policy/2023/12/stop-comparing-xs-dismal-ad-sales-to-twitters-past-success-x-exec-says/"
  ),
  NewsModel(headline: "Coach: 9/11 Was Excellent Teamwork",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a6c4e4b5f7aa83f095784_Blake%2C%20Wm.%20The%20Wrath%20of%20Elihu.%201805..jpg",
    imageName: "Blake, Wm. The Wrath of Elihu. 1805.",
    description: [
      "Buffalo Bills coach Sean McDermott has apologized after reports emerged that he cited the 9/11 terrorist attacks as an example of excellent teamwork during a speech to players.",
      "He pointed out that the 9/11 hijackers were all “on the same page” to orchestrate a terrorist attack to perfection.",
      "The comments were made during a team meeting 4 years ago but were not reported until now.",
      "McDermott asked the players with a straight face, “What tactics do you think they used to come together?” A young player tried to methodically answer. “What do you think their biggest obstacle was?” A veteran answered “TSA,” which lightened the mood.",
      "Speaking to reporters, McDermott apologized: “My intent in that meeting that day was to discuss the importance of communication and being on the same page with the team. I regretted mentioning 9/11 in my message that day, and I immediately apologized to the team.”",
      "He made sure to clarify that “not only was 9/11 a horrific event in our country’s history, but a day that I lost a good family friend.”"
    ],
    source: "https://www.nbcnews.com/news/us-news/bills-coach-sean-mcdermott-apologizes-911-attackers-teamwork-speech-rcna128683"
  ),
  NewsModel(headline: "News Channel Announces AI Anchors",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a6c330047bf74b4b67d64_Blake%2C%20Wm.%20The%20Three%20Maries%20at%20the%20Sepulchre.%201780..jpg",
    imageName: "Blake, Wm. The Three Maries at the Sepulchre. 1780.",
    description: [
      "An upcoming national news channel is replacing human anchors with hyper-realistic AI-generated avatars.",
      "Channel 1, set to launch next year, plans to use digitally generated people and digital doubles of real actors who had their bodies scanned.",
      "Demonstration videos show anchors that talk, look, and move like real humans, but were designed on computers using AI technology.",
      "The channel plans to stream its news on TV apps and is set to add a translation feature to roll it out globally.",
      "Adam Mosam, the outlet's founder, told The Daily Mail that misuse of AI-generated news is inevitable, but Channel 1 aims to “get out in front of this and create a responsible use of the technology.”",
      "For the more important stories, actual human anchors will report from the scene, Mosam clarified.",
      "Additionally, for situations where original footage is unavailable, such as a news story about dinosaurs, AI-generated video will be shown onscreen and labeled as such.",
      "Mosam: “We believe that we can create a better news product to really better inform people.”"
    ],
    source: "https://www.dailymail.co.uk/sciencetech/article-12859887/First-AI-generated-news-anchors-debut-streaming.html"
  ),
  NewsModel(headline: "Poll: 1 in 3 Men Open to 2 Wives",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a6bd9050b7a84f02f1518_Blake%2C%20Wm.%20The%20Harlot%20and%20the%20Giant.%201824..jpeg",
    imageName: "Blake, Wm. The Harlot and the Giant. 1824.",
    description: [
      "A new survey in the UK found 33% of men are open to polygamous relationships, the practice of having more than one partner, despite them being outlawed.",
      "Only 11% of women expressed the same openness.",
      "Additionally, 9% of men surveyed were willing to share a partner, while only 5% of women expressed interest.",
      "Polygamy is by no means new—historically, cultures all around the world practiced it, especially in Bronze Age families."
    ],
    source: "https://studyfinds.org/men-wife-girlfriend-polygamy/"
  ),
  NewsModel(
      headline: "U.S. Sees Nuclear Energy as Future",
    imageSource: "https://assets-global.website-files.com/6500bdee3b9e070412a101f7/657a6bbaec98d48d254ab06d_Blake%2C%20Wm.%20Milton%27s%20Paradise%20Regained.%201816..jpg",
    imageName: "Blake, Wm. Milton's Paradise Regained. 1816.",
    description: [
      "For the first time in 50 years, the U.S. has permitted a new kind of nuclear reactor, signaling that regulators are open to exploring innovations in nuclear energy for the future.",
      "The reactor, engineered by California startup Kairos Power, uses molten fluoride salt as a coolant rather than water, which most reactors today use.",
      "Molten salts remain liquid at high temperatures and low pressure, providing a safety advantage over systems cooled by water.",
      "Kairos hopes to commercialize innovative designs that can be built in factories, enabling for a faster and cheaper process to expand nuclear energy.",
      "The ultimate goal is a commercial project that would use two large reactors and contain over 100 megawatts of capacity.",
      "CEO Mike Laufer: “We’re developing a technology that will be highly scalable. Affordability is really about being able to scale up.”"
    ],
    source: "https://archive.is/gJDmX"
  ),
];
  List<ExpansionTileController> expansionTileController=[];
  
  expandableNewsWidget(List<NewsModel> newsList){
    expandedNewsWidget=[];
    expansionTileController=[];
    int i=0;
    for (var element in newsList) {
      expansionTileController.add(ExpansionTileController());
        expandedNewsWidget.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              ExpansionTile(
                controller: expansionTileController[i],
                title: Text(element.headline,style: const TextStyle(color: Colors.black,fontSize: 16, height: 2.5, ),),
                trailing: Container(height: 10,width: 10,color: Colors.white,),
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(element.imageSource??"",
                                fit: BoxFit.fitWidth,),
                          ),
                          Text(element.imageName??"",style: const TextStyle(color: Colors.grey,fontSize: 14, height: 2, ),),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:descriptionWidget(element.description??[]),
                          ),
                          const Text("Source",style: TextStyle(color: Colors.black,fontSize: 16, height: 2.5, ),),
                          InkWell(
                            onTap:() async {
                              if (!await launchUrl(Uri.parse(element.source??""))) {
                              throw Exception('Could not launch ${element.source}');
                              }
                              else{
                                await launchUrl(Uri.parse(element.source??""));
                              }
                            },
                            child: Text(element.source??"",style: const TextStyle(color: Colors.black,fontSize: 16, height: 2, ),),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
        i++;
      }
    update();
    return expandedNewsWidget;
    }
  descriptionWidget(List<String> descriptions){
    descriptionWidgetList=[];
     for (var element in descriptions) {
       descriptionWidgetList.add(Text(element,
         style: const TextStyle(color: Colors.black,fontSize: 16, height: 2, ),));
    }
    return descriptionWidgetList;
  }
}