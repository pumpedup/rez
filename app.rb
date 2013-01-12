require 'sinatra/base'
require './extensions/api'

module Sam
  class Rez < Sinatra::Base
    register Sam::API

    get '/intro', :rel => "introduction", :desc => "A little about Sam" do
      json({
          :summary => {
              :intro => "I am a technological generalist, entrepreneur and film maker. My strengths include (in no particular order) data architecting, reasoning about software patterns and UI/UIX design. I am ardent about open source and an active author and contributor to many libraries and packages.",
              :open_source => "My github profile chronicles some of my open source ambitions; most notably, pyapns, a server that enables developers to push notifications to iOS devices and DeferredKit, an asynchronous programming library for the Objective-C language.",
              :film_interest => "Early in my career I started a film production company, SamuraiFilms. Since then I have written, directed and photographed over 20 short films and commercials. Most recently we produced a promotional video for CraigsFish - an app I released in April 2011.",
          },
          :lifestyle_buzzwords => ['photographer', 'cyclist', 'mountain climber', 'back-country skier', 'bluegrass instrumentalist', 'singer', 'songwriter'],
          :specialities => [
              "Mobile apps (coded for all, specialized in iOS)",
              "REST web services, I've done lots of them",
              "Web and Database programming (SQL and NoSQL)",
              "Testing and automated deployment"
          ],
          :links => [
              {
                  :rel => 'github',
                  :link => 'http://github.com/samuraisam'
              },
              {
                  :rel => 'blog',
                  :link => 'http://ssutch.org'
              },
              {
                  :rel => 'linkedin',
                  :link => 'http://linkedin.com/ssutch'
              },
              {
                  :rel => 'twitter',
                  :link => 'http://twitter.com/ssutch'
              }
          ]
      })
    end

    get '/history', :rel => "experience", :desc => "An enumeration of past jobs" do
      json([
          {
              :status => 'current',
              :company => 'Lightt Inc',
              :position => 'CTO, Co-founder',
              :start_date => 'November 2010',
              :end_date => 'present',
              :location => 'San Francisco',
              :description => "Founded in 2011 with Ali Mostoufi, we wanted to develop a way for people to create an engaging and cinematic experience out of every-day life. We build a beautiful way to share your stories with your friends and the world in real-time.",
              :accomplishments => [
                  "Implementing a REST API on top of a scalable service architecture",
                  "Launched in Fall 2012 with perfect uptime in the midst of some pretty decent press",
                  "Designing edgy and beautifully simplistic UI",
                  "Develop and maintain our product roadmap",
                  "Oversee development efforts across the company which include many environments like iOS and web frontend"
              ],
              :links => [
                  {
                      :rel => 'website',
                      :title => 'Website',
                      :link => 'http://lightt.com'
                  },
                  {
                      :rel => 'profile',
                      :title => 'My Profile',
                      :link => 'http://lightt.com/ssutch'
                  },
                  {
                      :rel => 'app_store',
                      :title => 'App store link',
                      :link => 'https://itunes.apple.com/us/app/lightt/id545803363?mt=8'
                  }
              ]
          },
          {
              :status => 'past',
              :company => 'AlterTap Software',
              :position => 'Co-founder',
              :start_date => 'May 2009',
              :end_date => 'February 2012',
              :location => 'Palo Alto, CA',
              :description => 'Founded in 2009 with Aaron Voisine, AlterTap Inc. was an independent app development company modeled after the likes of Tap Tap Tap. AlterTap also contracted as a third-party for application development.',
              :accomplishments => [
                  "Designed and implemented three quality iOS applications CraigsFish, SigmaQuest and EnvironmentalReports",
                  "Implemented several open source and closed source libraries to aid in iOS and Python web service development",
              ],
              :links => [
                  {
                      :rel => 'project',
                      :title => 'Craigsfish',
                      :link => 'http://craigsfish.com'
                  },
                  {
                      :rel => 'project',
                      :title => 'EnvironmentlReports',
                      :link => 'http://environmentalreports.com/mobile.html'
                  },
                  {
                      :rel => 'project',
                      :title => 'SigmaQuest',
                      :link => 'http://itunes.apple.com/us/app/sigmaalerts/id334830392?mt=8'
                  }
              ]
          },
          {
              :status => 'past',
              :company => 'Yammer Inc',
              :position => 'Senior Software Engineer',
              :start_date => 'April 2010',
              :end_date => 'June 2011',
              :location => 'San Francisco, CA',
              :description => "Originally contracted to maintain Yammer's iPhone app and within a few months developed and released an entirely new version which became Yammer's most popular mobile application. I later developed their iPad application which received some critical acclaim from media like TechCrunch.",
              :accomplishments => [
                  "Designed and implemented an award winning iOS app from the ground up and ahead of schedule",
                  "Drastically enhanced mobile engagement",
                  "Created and improved several open source libraries to aid and speed development"
              ],
              :links => [
                  {
                      :rel => 'website',
                      :title => "Yammer's Website",
                      :link => 'http://yammer.com',
                  },
                  {
                      :rel => 'project',
                      :title => "Yammer's mobile site",
                      :link => 'https://www.yammer.com/company/ios'
                  },
                  {
                      :rel => 'app_store',
                      :title => 'App store link',
                      :link => 'https://itunes.apple.com/app/yammer/id289559439?mt=8'
                  }
              ]
          },
          {
              :status => 'past',
              :company => 'RF.com',
              :position => 'Product Engineer',
              :start_date => 'June 2008',
              :end_date => 'June 2009',
              :location => 'San Francisco',
              :description => "Started as a Python/PostgreSQL Engineer and quickly graduated to 'Generalist.' Worked on an IP-telephony stack for use on any mobile phone and later specialized to iPhone.",
              :accomplishments => [
                  'Designed and implemented 3rd party developer API and user-facing account management portal in Python and PostgreSQL',
                  'Authored developer documentation and offered 3rd party developer support',
                  'Wrote an iPhone app that connected to the RF API and offered features like shared contact lists, calling history, multiple PBX backends and 3G VoIP'
              ],
              :links => [
                  {
                      :rel => 'website',
                      :title => 'RF website',
                      :link => 'http://rf.com'
                  }
              ]
          },
          {
              :status => 'past',
              :company => 'Montana Plans Exchange',
              :position => 'Software Engineer',
              :start_date => 'June 2004',
              :end_date => 'August 2007',
              :location => 'Kalispell, MT',
              :description => 'Developed a web application used by contractors, architects, engineers and governmental personnel in Montana, Wyoming, Idaho and the Washington state general area to conduct Request for Proposal and bidding cycle.',
              :accomplishments => [
                  'Created an end-to-end application including management interface, file sharing, bidding and tracking interface and a web publication',
                  'Produced a lightweight footprint PHP application backed by MySQL database'
              ],
              :links => [
                  {
                      :rel => 'website',
                      :title => 'Montana Plans Exchange website',
                      :link => 'http://montanaplanexchange.com'
                  }
              ]
          }
      ])
    end

    get '/os', :rel => "open_source", :desc => "A list of open source projects and accomplishments" do
      json([
          {
              :collection_title => "Notable projects used in production by companies right now.",
              :items => [
                  {
                      :title => 'pyapns',
                      :description => 'A language-agnostic Apple Push Notification Service provider with multi-app support',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/pyapns'
                          },
                          {
                              :rel => 'notable_user',
                              :link => 'http://instagram.com'
                          }
                      ]
                  },
                  {
                      :title => 'django-json-rpc',
                      :description => 'Simplified but feature rich JSON-RPC servers in Django',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/django-json-rpc'
                          }
                      ]
                  },
                  {
                      :title => 'time_uuid',
                      :description => 'A handy-dandy class for dealing with UUIDv1 (TimeUUID) in Python',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/time_uuid'
                          },
                          {
                              :rel => 'docs',
                              :link => 'http://packages.python.org/time-uuid/'
                          }
                      ]
                  },
                  {
                      :title => 'requisite',
                      :description => 'Python dependencies bundler',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/requisite'
                          }
                      ]
                  },
                  {
                      :title => 'cycloauth',
                      :description => 'OAuth provider for the Cyclone web framework',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/cycloauth'
                          }
                      ]
                  },
                  {
                      :title => 'readdit',
                      :description => 'An open source Reddit client for iPad',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/readdit'
                          },
                          {
                              :rel => 'subreddit',
                              :link => 'http://www.reddit.com/r/readditapp/'
                          }
                      ]
                  },
                  {
                      :title => 'DeferredKit',
                      :description => 'An asynchronous programming library for iOS',
                      :links => [
                          {
                              :rel => 'github',
                              :link => 'https://github.com/samuraisam/DeferredKit'
                          }
                      ]
                  }
              ]
          }
      ])
    end

    get '/contact' do
      json({
          :email => 'samuel.sutch@gmail.com',
          :twitter => '@ssutch',
          :github => 'github.com/samuraisam',
          :linkedin => 'linkedin.com/ssutch'
      })
    end

    run! if app_file == $0
  end
end
