# For the uva reunion 2015
DIRECTORY = 'data/uva15/'
SOURCE = "#{DIRECTORY}uva-reunion.csv"
MERGED = "#{DIRECTORY}merged-uva-reunion.csv"

# Summable for Reuion 2014
SUMMABLE = [
  "RW15 - Package Fees",
  "RW15 - Package Fees - total_price_paid",
  "RW15 - Friday Excursion",
  "RW15 - Friday Excursion - total_price_paid",
  "RW15 - Seminars 1030am-1145am",
  "RW15 - Seminars 1030am-1145am - total_price_paid",
  "RW15 - Seminars 1pm-215pm",
  "RW15 - Seminars 1pm-215pm - total_price_paid",
  "RW15 - Friday Wine Fest",
  "RW15 - Friday Wine Fest - total_price_paid",
  "RW15 - Seminars 230pm-345pm",
  "RW15 - Seminars 230pm-345pm - total_price_paid",
  "RW15 - Seminars 4-515pm",
  "RW15 - Seminars 4-515pm - total_price_paid",
  "RW15 - Friday Hoos Care",
  "RW15 - Friday Hoos Care - total_price_paid",
  "RW15 - Sat-Seminars 945am-1045am",
  "RW15 - Sat-Seminars 945am-1045am - total_price_paid",
  "RW15 - Sat-KidsCollegeSessionI",
  "RW15 - Sat-KidsCollegeSessionI - total_price_paid",
  "RW15 - Arch School Lunch",
  "RW15 - Arch School Lunch - total_price_paid",
  "RW15 - Sat-KidsCollegeSessionII",
  "RW15 - Sat-KidsCollegeSessionII - total_price_paid",
  "RW15 - Sat-Seminars 130-245pm",
  "RW15 - Sat-Seminars 130-245pm - total_price_paid",
  "RW15 - Wine101",
  "RW15 - Wine101 - total_price_paid",
  "RW15 - Sat-Seminars 3-415pm",
  "RW15 - Sat-Seminars 3-415pm - total_price_paid",
  "RW15 - FratSoros Reception",
  "RW15 - FratSoros Reception",
  "RW15 - Sat-Little Hoos",
  "RW15 - Sat-Little Hoos - total_price_paid"
]

# You must have the following four definitions: first_name:, last_name:, class_year:, and guest_of:
PERSON_DEFINITION = {
  alternate_id: { column_name: "alternate_id", output_column_name: "Alternate ID"  },
  first_name: { column_name: "First_Name", output_column_name: "First Name" },
  last_name: { column_name: "Last_Name", output_column_name: "Last Name"  },
  name_tag: { column_name: "RW15 - Nametag", output_column_name: "Nametag" },
  maiden_name: { column_name: "maiden_name", output_column_name: "Former Name"  },
  guest_of: { column_name: "Guest of", output_column_name: "Guest Of" },
  email_address: { column_name: "email_address", output_column_name: "Email" },
  class_year: { column_name: "RW15 - ClassYear" , setter: Proc.new { |value| value.eql?("N/A") ? "N/A" : (value.nil? || value.strip.empty? ? "N/A" : value) }, output_column_name: "Class Year" },
  school: { column_name: "RW15 - School", output_column_name: "School" },
  dietary_needs: { column_name: "RW15 - DietaryNeeds", output_column_name: "Dietary Needs" },
  other_dietary_needs: { column_name: "RW15 - Other Dietary Needs", output_column_name: "Other Dietary Needs" },
  is_giving: { column_name: "RW15 - Is Giving", output_column_name: "Is Giving" },
  opted_out: { column_name: "Reunions 2015 - is_opted_out_12851", output_column_name: "Opted Out" },
  days_attending: { column_name: "RW15 - DaysAttending", output_column_name: "RW15 - DaysAttending" },
  guest_maiden_middle: { column_name: "RW15 - Guest MaidenMiddle", output_column_name: "Guest Maiden Middle" },
  guest_email: { column_name: "Reunions Weekend 2015 - RW15 - Guest Email", output_column_name: "Guest Email" },
  guest_child_age: { column_name: "RW15 - Guest Child Age", output_column_name: "Guest Child Age" },
  guest_child_exact_age: { column_name: "RW15 - Guest Child Exact Age", output_column_name: "Guest Child Exact Age"},
  
}

ACTIVITIES = [

  { name: "Reunion 2015",
    columns: ["RW15 - Package Fees",
              "SKU (RW15 - Package Fees)",
              "Fee Name (RW15 - Package Fees)",
              "RW15 - Package Fees - total_price_paid",
              "RW15 - Hidden PackagePurchased",
              "Registrant - 9517 - Is Registered"]
  },

  { name: "Movie on the Lawn",
    columns: ["Movie on the Lawn - Is attending", 
              "Movie on the Lawn - 9521 - Is Registered"]
  },
            
  { name: "Monticello and Ash Lawn-Highland Excursion",
    columns: ["Monticello and Ash Lawn-Highland Excursion - Is attending",
              "RW15 - Friday Excursion",
              "SKU (RW15 - Friday Excursion)",
              "Fee Name (RW15 - Friday Excursion)",
              "RW15 - Friday Excursion - total_price_paid",
              "Monticello and Ash Lawn-Highland Excursion - 9626 - Is Registered"]
  },
  
  { name: "Friday New Dorms Tour",
    columns: ["Friday New Dorms Tour - Is attending",
              "Friday New Dorms Tour - 9627 - Is Registered"]
  },
            
  { name: "Seminars 1030am-1145am",
    columns: ["Seminars 1030am-1145am - Is attending",
              "RW15 - Seminars 1030am-1145am",
              "Fee Name (RW15 - Seminars 1030am-1145am)",
              "RW15 - Seminars 1030am-1145am - total_price_paid",
              "Seminars (10:30am-11:45am) - 9628 - Is Registered"]
  },

  { name: "Seminars 1pm-215pm",
    columns: ["Seminars 1pm-215pm - Is attending",
              "RW15 - Seminars 1pm-215pm",
              "Fee Name (RW15 - Seminars 1pm-215pm)",
              "RW15 - Seminars 1pm-215pm - total_price_paid",
              "Seminars (1pm-2:15pm) - 9629 - Is Registered"]
  },

  { name: "Tour of the Universitys Cemetery",
    columns: ["Tour of the Universitys Cemetery - Is attending",
              "Tour of the University Cemetery - 9630 - Is Registered"]
  },

  { name: "Virginia Wine Festival",
    columns: ["Virginia Wine Festival  - Is attending",
              "RW15 - Friday Wine Fest",
              "SKU (RW15 - Friday Wine Fest)",
              "Fee Name (RW15 - Friday Wine Fest)",
              "RW15 - Friday Wine Fest - total_price_paid",
              "Virginia Wine Festival  - 9631 - Is Registered"]
  },

  { name: "Seminars 230pm-345pm",
    columns: ["Seminars 230pm-345pm - Is attending",
              "RW15 - Seminars 230pm-345pm",
              "Fee Name (RW15 - Seminars 230pm-345pm)",
              "RW15 - Seminars 230pm-345pm - total_price_paid",
              "Seminars (2:30pm-3:45pm) - 9632 - Is Registered"]
  },

  { name: "Seminars 4-515pm",
    columns: ["Seminars 4-515pm - Is attending",
              "RW15 - Seminars 4-515pm",
              "Fee Name (RW15 - Seminars 4-515pm)",
              "RW15 - Seminars 4-515pm - total_price_paid",
              "Seminars (4-5:15pm) - 9633 - Is Registered"]
  },

  { name: "Pavilion IX Open House with Dean Dorrie Fontaine",
    columns: ["Pavilion IX Open House with Dean Dorrie Fontaine  - Is attending",
              "Pavilion IX Open House with Dean Dorrie Fontaine  - 9634 - Is Registered"]
  },

  { name: "Reception Drama Department Alumni",
    columns: ["Reception Drama Department Alumni - Is attending",
              "Reception: Drama Department Alumni - 9635 - Is Registered"]
  },

  { name: "Reception Jefferson Literary  Debating Society Sippers",
    columns: ["Reception Jefferson Literary  Debating Society Sippers - Is attending",
              "Reception: Jefferson Literary & Debating Society Sippers - 9636 - Is Registered"]
  },

  { name: "Presidential Welcome Reception",
    columns: ["Presidential Welcome Reception - Is attending",
              "Presidential Welcome Reception - 9637 - Is Registered"]
  },

  { name: "Seminars 530pm-730pm",
    columns: ["Seminars 530pm-730pm - Is attending",
              "Seminar: Field of Lost Shoes Movie Screening (5:30pm-7:30pm) - 9638 - Is Registered"]
  },

  { name: "Reception School of Architecture",
    columns: ["Reception School of Architecture - Is attending",
              "Reception: School of Architecture - 9639 - Is Registered"]
  },

  { name: "Friday Little Hoos Child Care",
    columns: ["Friday Little Hoos Child Care - Is attending",
              "RW15 - Friday Hoos Care",
              "SKU (RW15 - Friday Hoos Care)",
              "Fee Name (RW15 - Friday Hoos Care)",
              "RW15 - Friday Hoos Care - total_price_paid",
              "Friday: Little Hoos Child Care - 9640 - Is Registered"]
  },

  { name: "1970 Hors doeuvres Cocktails and Conversations",
    columns: ["1970 Hors doeuvres Cocktails and Conversations - Is attending",
              "1970 Hors dÂoeuvres, Cocktails, and Conversations - 9641 - Is Registered"]
  },
  
  { name: "1975 Cocktails and Conversations",
    columns: ["1975 Cocktails and Conversations - Is attending",
              "1975 Cocktails and Conversations - 9646 - Is Registered"]
  },

  { name: "1980 BBQ and Beer",
    columns: ["1980 BBQ and Beer - Is attending",
              "1980 BBQ and Beer - 9648 - Is Registered"]
  },
  
  { name: "1985 Mid-Lawn Barbecue",
    columns: ["1985 Mid-Lawn Barbecue - Is attending",
              "1985 Mid-Lawn Barbecue - 9649 - Is Registered"]
  },
 
  { name: "1990 Welcome Back Dinner",
    columns: ["1990 Welcome Back Dinner - Is attending",
              "1990 Welcome Back Dinner - 9650 - Is Registered"]
  },

  { name: "1995 Welcome Back Fiesta Reception",
    columns: ["1995 Welcome Back Fiesta Reception - Is attending",
              "1995 Welcome Back Fiesta Reception - 10197 - Is Registered"]
  },
 
  { name: "2000 Tex-Mex on the Lawn",
    columns: ["2000 Tex-Mex on the Lawn - Is attending",
              "2000 Tex-Mex on the Lawn - 9651 - Is Registered"]
  },
 
  { name: "2005 Back-to-Grounds Dinner",
    columns: ["2005 Back-to-Grounds Dinner - Is attending",
              "2005 Back-to-Grounds Dinner - 9653 - Is Registered"]
  },

  { name: "2010 Flashback Friday Dinner",
    columns: ["2010 Flashback Friday Dinner - Is attending",
              "2010 Flashback Friday Dinner - 9654 - Is Registered"]
  },

  { name: "2000 Back to the Corner Bar Night",
    columns: ["2000 Back to the Corner Bar Night - Is attending",
              "2000 Back to the Corner Bar Night - 9652 - Is Registered"]
  },
 
  { name: "Hypnotist Tom DeLuca",
    columns: ["Hypnotist Tom DeLuca - Is attending",
              "Hypnotist Tom DeLuca - 9655 - Is Registered"]
  },

  { name: "The Jangling Reinharts",
    columns: ["The Jangling Reinharts - Is attending",
              "The Jangling Reinharts - 9656 - Is Registered"]
  },

  { name: "Late Night Trivia",
    columns: ["Late Night Trivia - Is attending",
              "Late Night Trivia - 9657 - Is Registered"]
  },

  { name: "Saturday Yoga on the Lawn",
    columns: ["Saturday Yoga on the Lawn  - Is attending",
              "Yoga on the Lawn  - 9664 - Is Registered"]
  },

  { name: "Brody Jewish Center Hillel at UVa",
    columns: ["Brody Jewish Center Hillel at UVa - Is attending",
              "Brody Jewish Center, Hillel at U.Va. - 9667 - Is Registered"]
  },

  { name: "Reception Brown College and Monroe Hill Alumni",
    columns: ["Reception Brown College and Monroe Hill Alumni - Is attending",
              "Reception: Brown College and Monroe Hill Alumni - 9668 - Is Registered"]
  },

  { name: "Reception Hoos in Media",
    columns: ["Reception Hoos in Media  - Is attending",
              "Reception: Hoos in Media  - 9669 - Is Registered"]
  },

  { name: "Reception Jefferson Scholars Foundation Alumni",
    columns: ["Reception Jefferson Scholars Foundation Alumni - Is attending",
              "Reception: Jefferson Scholars Foundation Alumni - 9670 - Is Registered"]
  },

  { name: "Reception Lawn Residents",
    columns: ["Reception Lawn Residents - Is attending",
              "Reception: Lawn Residents - 9671 - Is Registered"]
  },

  { name: "Reception Resident Advisors",
    columns: ["Reception Resident Advisors - Is attending",
              "Reception: Resident Advisors - 9672 - Is Registered"]
  },

  { name: "Reception University Judiciary Committee",
    columns: ["Reception University Judiciary Committee - Is attending",
              "Reception: University Judiciary Committee - 9673 - Is Registered"]
  },

  { name: "Alumni Memorial",
    columns: ["Alumni Memorial - Is attending",
              "Alumni Memorial - 9674 - Is Registered"]
  },
 
  { name: "Saturday Seminars 930-1045am",
    columns: ["Saturday Seminars 930-1045am - Is attending",
              " Seminar: Alumni Children and the Admission Process with Admission Tour - 9675 - Is Registered"]
  },
 
  { name: "Betsy  John Casteen Arts Grounds Tour",
    columns: ["Betsy  John Casteen Arts Grounds Tour - Is attending",
              "Betsy & John Casteen Arts Grounds Tour - 9665 - Is Registered"]
  },
 
  { name: "Saturday Seminars 945-1045am",
    columns: ["Saturday Seminars 945-1045am - Is attending",
              "RW15 - Sat-Seminars 945am-1045am",
              "Fee Name (RW15 - Sat-Seminars 945am-1045am)",
              "RW15 - Sat-Seminars 945am-1045am - total_price_paid",
              "Saturday: Seminars (9:30-10:45am) - 9676 - Is Registered"]
  },

  { name: "Saturday Seminars 10-11am",
    columns: ["Saturday Seminars 10-11am - Is attending",
              "Seminar: Media Now - and Media in the Future (10-11am) - 9678 - Is Registered"]
  },
 
  { name: "Saturday Kids College - Session I",
    columns: ["Saturday Kids College - Session I - Is attending",
              "RW15 - Sat-KidsCollegeSessionI",
              "SKU (RW15 - Sat-KidsCollegeSessionI)",
              "Fee Name (RW15 - Sat-KidsCollegeSessionI)",
              "RW15 - Sat-KidsCollegeSessionI - total_price_paid",
              "Saturday: Kids'' College - Session I - 9679 - Is Registered"]
  },

  { name: "Saturday Seminars 11-1215pm",
    columns: ["Saturday Seminars 11-1215pm - Is attending",
              "Seminar: A Presidential Perspective on U.Va.''s Future (11am-12:15pm) - 9680 - Is Registered"]
  },

  { name: "Schools Lunches Architecture School Lunch",
    columns: ["Schools Lunches Architecture School Lunch - Is attending",
              "RW15 - Arch School Lunch",
              "SKU (RW15 - Arch School Lunch)",
              "Fee Name (RW15 - Arch School Lunch)",
              "RW15 - Arch School Lunch - total_price_paid",
              "School Lunches - 9681 - Is Registered"]
  },

  { name: "Saturday Kids College - Session II",
    columns: ["Saturday Kids College - Session II - Is attending",
              "RW15 - Sat-KidsCollegeSessionII",
              "Fee Name (RW15 - Sat-KidsCollegeSessionII)",
              "RW15 - Sat-KidsCollegeSessionII - total_price_paid",
              "Saturday: Kids'' College - Session II - 9687 - Is Registered"]
  },

  { name: "WTJU Reception and Studio Tours",
    columns: ["WTJU Reception and Studio Tours - Is attending",
              "WTJU Reception and Studio Tours - 9688 - Is Registered"]
  },

  { name: "Saturday Seminars 130-245pm",
    columns: ["Saturday Seminars 130-245pm - Is attending",
              "RW15 - Sat-Seminars 130-245pm",
              "Fee Name (RW15 - Sat-Seminars 130-245pm)",
              "RW15 - Sat-Seminars 130-245pm - total_price_paid",
              "Saturday: Seminars (1:30-2:45pm) - 9689 - Is Registered"]
  },

  { name: "Wine 401 The Art of Wine Tasting",
    columns: ["Wine 401 The Art of Wine Tasting  - Is attending",
              "RW15 - Wine101",
              "SKU (RW15 - Wine101)",
              "Fee Name (RW15 - Wine101)",
              "RW15 - Wine101 - total_price_paid",
              "Wine 401: The Art of Wine Tasting  - 9690 - Is Registered"]
  },

  { name: "The Fralin Museum of Art - Special Tour",
    columns: ["The Fralin Museum of Art - Special Tour - Is attending",
              "The Fralin Museum of Art - Special Tour - 9691 - Is Registered"]
  },

  { name: "School of Nursing Building Tours",
    columns: ["School of Nursing Building Tours - Is attending",
              "School of Nursing Building Tours - 9692 - Is Registered"]
  },

  { name: "WUVA Alumni Open House and Reception",
    columns: ["WUVA Alumni Open House and Reception - Is attending",
              "WUVA Alumni Open House and Reception - 9693 - Is Registered"]
  },

  { name: "Lawn Tours",
    columns: ["Lawn Tours - Is attending",
              "Lawn Tours - 9694 - Is Registered"]
  },

  { name: "Saturday Seminars 3-415pm",
    columns: ["Saturday Seminars 3-415pm - Is attending",
              "RW15 - Sat-Seminars 3-415pm",
              "Fee Name (RW15 - Sat-Seminars 3-415pm)",
              "RW15 - Sat-Seminars 3-415pm - total_price_paid",
              "Saturday: Seminars (3-4:15pm) - 9695 - Is Registered"]
  },

  { name: "Kids Carnival",
    columns: ["Kids Carnival - Is attending",
              "KidsÂ Carnival - 9696 - Is Registered"]
  },

  { name: "Reception Alpha Phi Omega",
    columns: ["Reception Alpha Phi Omega - Is attending",
              "Reception: Alpha Phi Omega - 9697 - Is Registered"]
  },

  { name: "Reception Asian and Asian Pacific American Alumni",
    columns: ["Reception Asian and Asian Pacific American Alumni - Is attending",
              "Reception: Asian and Asian Pacific American Alumni - 9698 - Is Registered"]
  },

  { name: "Reception Biomedical Engineering Alumni",
    columns: ["Reception Biomedical Engineering Alumni - Is attending",
              "Reception: Biomedical Engineering Alumni - 9699 - Is Registered"]
  },

  { name: "Reception Black Alumni",
    columns: ["Reception Black Alumni - Is attending",
              "Reception: Black Alumni - 9700 - Is Registered"]
  },

  { name: "Reception Cavalier Daily Alumni Association",
    columns: ["Reception Cavalier Daily Alumni Association - Is attending",
              "Reception: Cavalier Daily Alumni Association - 9701 - Is Registered"]
  },

  { name: "Reception Echols Scholars",
    columns: ["Reception Echols Scholars - Is attending",
              "Reception: Echols Scholars - 9702 - Is Registered"]
  },

  { name: "Reception Fraternity and Sorority Receptions",
    columns: ["Reception Fraternity and Sorority Receptions - Is attending",
              "RW15 - FratSoros Reception",
              "Fee Name (RW15 - FratSoros Reception)",
              "RW15 - FratSoros Reception - total_price_paid",
              "Saturday: Seminars (3-4:15pm) - 9695 - Is Registered"]
  },

  { name: "HispanicLatino Alumni",
    columns: ["HispanicLatino Alumni - Is attending",
              "Hispanic/Latino Alumni - 9704 - Is Registered"]
  },

  { name: "Reception International Relations Organization",
    columns: ["Reception International Relations Organization - Is attending",
              "Reception: International Relations Organization - 9705 - Is Registered"]
  },

  { name: "Reception Jefferson Literary and Debating Society",
    columns: ["Reception Jefferson Literary and Debating Society - Is attending",
              "Reception: Jefferson Literary and Debating Society - 9706 - Is Registered"]
  },

  { name: "Reception Madison House",
    columns: ["Reception Madison House - Is attending",
              "Reception: Madison House - 9707 - Is Registered"]
  },

  { name: "Reception University Programs CouncilUniversity Union",
    columns: ["Reception University Programs CouncilUniversity Union - Is attending",
              "Reception: University Programs Council/University Union - 9708 - Is Registered"]
  },

  { name: "Reception University SingersChamber SingersCoro Virginia",
    columns: ["Reception University SingersChamber SingersCoro Virginia  - Is attending",
              "Reception: University Singers/Chamber Singers/Coro Virginia  - 9709 - Is Registered"]
  },

  { name: "Reception Virginia Glee Club",
    columns: ["Reception Virginia Glee Club  - Is attending",
              "Reception: Virginia Glee Club  - 9710 - Is Registered"]
  },

  { name: "Virginia Womens Chorus",
    columns: ["Virginia Womens Chorus  - Is attending",
              "Reception: Virginia WomenÂs Chorus  - 9711 - Is Registered"]
  },

  { name: "Reception: Eli Banana",
    columns: ["Reception: Eli Banana - Is attending",
              "Reception: Eli Banana - 10159 - Is Registered"]
  },

  { name: "UVa Alumni Sing",
    columns: ["UVa Alumni Sing - Is attending",
              "U.Va. Alumni Sing - 9712 - Is Registered"]
  },

  { name: "Reception Air Force ROTC",
    columns: ["Reception Air Force ROTC - Is attending",
              "Reception: Air Force ROTC - 9713 - Is Registered"]
  },

  { name: "Reception Anthropology Archaeology and Linguistics Alumni Army ROTC",
    columns: ["Reception Anthropology Archaeology and Linguistics Alumni Army ROTC - Is attending",
              "Reception: Anthropology, Archaeology and Linguistics Alumni - 9714 - Is Registered"]
  },

  { name: "Reception Army ROTC",
    columns: ["Reception Army ROTC - Is attending",
              "Reception: Army ROTC - 9715 - Is Registered"]
  },

  { name: "Reception Christian Fellowship Groups",
    columns: ["Reception Christian Fellowship Groups - Is attending",
              "Reception: Christian Fellowship Groups - 9716 - Is Registered"]
  },

  { name: "Reception Honor Committee",
    columns: ["Reception Honor Committee - Is attending",
              "Reception: Honor Committee - 9717 - Is Registered"]
  },

  { name: "Reception IMP Society",
    columns: ["Reception IMP Society - Is attending",
              "Reception: IMP Society - 9718 - Is Registered"]
  },

  { name: "Reception Marching Band",
    columns: ["Reception Marching Band - Is attending",
              "Reception: Marching Band - 9719 - Is Registered"]
  },

  { name: "Reception NROTC",
    columns: ["Reception NROTC - Is attending",
              "Reception: NROTC - 9720 - Is Registered"]
  },

  { name: "Reception Serpentine Society",
    columns: ["Reception Serpentine Society - Is attending",
              "Reception: Serpentine Society - 9722 - Is Registered"]
  },

  { name: "Reception Study Abroad Programs",
    columns: ["Reception Study Abroad Programs - Is attending",
              "Reception: Study Abroad Programs - 9723 - Is Registered"]
  },

  { name: "Reception TILKA",
    columns: ["Reception TILKA - Is attending",
              "Reception: T.I.L.K.A. - 9724 - Is Registered"]
  },

  { name: "Reception Trigon Engineering Society",
    columns: ["Reception Trigon Engineering Society - Is attending",
              "Reception: Trigon Engineering Society - 9725 - Is Registered"]
  },

  { name: "Reception University Guide Service",
    columns: ["Reception University Guide Service - Is attending",
              "Reception: University Guide Service - 9726 - Is Registered"]
  },

  { name: "2010 Beer Garden",
    columns: ["2010 Beer Garden - Is attending",
              "2010 Beer Garden - 9727 - Is Registered"]
  },

  { name: "2005 Cheers to Ten Years",
    columns: ["2005 Cheers to Ten Years - Is attending",
              "2005 Cheers to Ten Years - 9728 - Is Registered"]
  },

  { name: "Little Hoos Child Care Saturday 9-Midnight",
    columns: ["Little Hoos Child Care Saturday 9-Midnight - Is attending",
              "RW15 - Sat-Little Hoos",
              "SKU (RW15 - Sat-Little Hoos)",
              "Fee Name (RW15 - Sat-Little Hoos)",
              "RW15 - Sat-Little Hoos - total_price_paid",
              "Little Hoos Child Care (Saturday 9-Midnight) - 9735 - Is Registered"]
  },
  
  { name: "1970 45th Anniversary Dinner",
    columns: ["1970 45th Anniversary Dinner - Is attending",
              "1970 45th Anniversary Dinner - 9736 - Is Registered"]
  },

  { name: "1975 40th Anniversary Taste of Virginia Dinner",
    columns: ["1975 40th Anniversary Taste of Virginia Dinner - Is attending",
              "1975 40th Anniversary Taste of Virginia Dinner - 9737 - Is Registered"]
  },

  { name: "1980 Dinner on the Lawn",
    columns: ["1980 Dinner on the Lawn - Is attending",
              "1980 Dinner on the Lawn - 9738 - Is Registered"]
  },
  
  { name: "1985 Dinner and Dancing in the Amphitheater",
    columns: ["1985 Dinner and Dancing in the Amphitheater - Is attending",
              "1985 Dinner and Dancing in the Amphitheater - 9739 - Is Registered"]
  },

  { name: "1990 Silver Anniversary Dinner",
    columns: ["1990 Silver Anniversary Dinner - Is attending",
              "1990 Silver Anniversary Dinner - 9740 - Is Registered"]
  },

  { name: "1995 A Taste of Virginia",
    columns: ["1995 A Taste of Virginia - Is attending",
              "1995 A Taste of Virginia - 9741 - Is Registered"]
  },

  { name: "2000 A Taste of Virginia Dinner",
    columns: ["2000 A Taste of Virginia Dinner - Is attending",
              "2000 A Taste of Virginia Dinner - 9742 - Is Registered"]
  },

  { name: "2005 Aged to Perfection",
    columns: ["2005 Aged to Perfection - Is attending",
              "2005 Aged to Perfection - 9743 - Is Registered"]
  },

  { name: "2010 Southern Hospitality on the New South Lawn",
    columns: ["2010 Southern Hospitality on the New South Lawn - Is attending",
              "2010 Southern Hospitality on the New South Lawn - 9744 - Is Registered"]
  },

  { name: "Kids Movies - Monsters University",
    columns: ["Kids Movies - Monsters University  - Is attending",
              "KidsÂ Movies - Monsters University  - 9745 - Is Registered"]
  },

  { name: "Kids Movies - Frozen PG",
    columns: ["Kids Movies - Frozen PG - Is attending",
              "KidsÂ Movies - Frozen (PG) - 9746 - Is Registered"]
  },

  { name: "Jazz Piano Lounge",
    columns: ["Jazz Piano Lounge - Is attending",
              "Jazz Piano Lounge - 9747 - Is Registered"]
  },

  { name: "Celebrity AllStars Band",
    columns: ["Celebrity AllStars Band - Is attending",
              "Celebrity AllStars Band - 9748 - Is Registered"]
  },

  { name: "The Skip Castro Band",
    columns: ["The Skip Castro Band - Is attending",
              "The Skip Castro Band - 9749 - Is Registered"]
  },

  { name: "DJ Young Rye",
    columns: ["DJ Young Rye - Is attending",
              "DJ Young Rye - 9750 - Is Registered"]
  },

  { name: "Come as You Go Brunch featuring Larry Sabatos Crystal Ball",
    columns: ["ÂCome as You GoÂ Brunch featuring Larry SabatoÂs Crystal Ball - 9620 - Is Register",
              "Come as You Go Brunch featuring Larry Sabatos Crystal Ball - Is attending"]
  },

  { name: "Catholic Student Ministry Brunch",
    columns: ["Catholic Student Ministry Brunch - Is attending",
              "Catholic Student Ministry Brunch - 9621 - Is Registered"]
  },

  { name: "Raven Society Brunch",
    columns: ["Raven Society Brunch - Is attending",
              "Raven Society Brunch - 9622 - Is Registered"]
  },

  { name: "Lawn Tours",
    columns: ["Lawn Tours - Is attending",
              "Lawn Tours - 9623 - Is Registered"]
  },

  { name: "New Dorms Tour",
    columns: ["New Dorms Tour - Is attending",
              "New Dorms Tour - 9625 - Is Registered"]
  } 
   
]

