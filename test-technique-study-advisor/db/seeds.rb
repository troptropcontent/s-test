# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quizz_source_urls={ animaux: ["https://www.kiwime.com/oqdb/files/3237929525/OpenQuizzDB_237/openquizzdb_237.json",
                              "https://www.kiwime.com/oqdb/files/2175987377/OpenQuizzDB_175/openquizzdb_175.json"
                              # "https://www.kiwime.com/oqdb/files/2175987377/OpenQuizzDB_175/openquizzdb_175.json"
                            ],
                    archeologie: ["https://www.kiwime.com/oqdb/files/2156553397/OpenQuizzDB_156/openquizzdb_156.json",
                              "https://www.kiwime.com/oqdb/files/2183543422/OpenQuizzDB_183/openquizzdb_183.json"],
                    art:["https://www.kiwime.com/oqdb/files/1086624389/OpenQuizzDB_086/openquizzdb_86.json",
                          "https://www.kiwime.com/oqdb/files/2128644638/OpenQuizzDB_128/openquizzdb_128.json",
                          "https://www.kiwime.com/oqdb/files/1069848949/OpenQuizzDB_069/openquizzdb_69.json"],
                    bd:["https://www.kiwime.com/oqdb/files/2124627384/OpenQuizzDB_124/openquizzdb_124.json"],
                    celebrites:["https://www.kiwime.com/oqdb/files/2131367548/OpenQuizzDB_131/openquizzdb_131.json",
                                "https://www.kiwime.com/oqdb/files/1078259268/OpenQuizzDB_078/openquizzdb_78.json",
                                "https://www.kiwime.com/oqdb/files/2113769628/OpenQuizzDB_113/openquizzdb_113.json",
                                "https://www.kiwime.com/oqdb/files/2192584295/OpenQuizzDB_192/openquizzdb_192.json"],
                    cinema: ["https://www.kiwime.com/oqdb/files/2116993372/OpenQuizzDB_116/openquizzdb_116.json",
                            "https://www.kiwime.com/oqdb/files/1046684933/OpenQuizzDB_046/openquizzdb_46.json",
                            "https://www.kiwime.com/oqdb/files/3214487936/OpenQuizzDB_214/openquizzdb_214.json",
                            "https://www.kiwime.com/oqdb/files/3250263385/OpenQuizzDB_250/openquizzdb_250.json",
                            "https://www.kiwime.com/oqdb/files/1003884477/OpenQuizzDB_003/openquizzdb_3.json",
                            "https://www.kiwime.com/oqdb/files/1090993427/OpenQuizzDB_090/openquizzdb_90.json"],
                    culture_generale:["https://www.kiwime.com/oqdb/files/1044836474/OpenQuizzDB_044/openquizzdb_44.json",
                                      "https://www.kiwime.com/oqdb/files/3254952699/OpenQuizzDB_254/openquizzdb_254.json",
                                      "https://www.kiwime.com/oqdb/files/2111577837/OpenQuizzDB_111/openquizzdb_111.json",
                                      "https://www.kiwime.com/oqdb/files/3246425289/OpenQuizzDB_246/openquizzdb_246.json",
                                      "https://www.kiwime.com/oqdb/files/1017849742/OpenQuizzDB_017/openquizzdb_17.json",
                                      "https://www.kiwime.com/oqdb/files/1068683345/OpenQuizzDB_068/openquizzdb_68.json"],
                    geographie:["https://www.kiwime.com/oqdb/files/2135593632/OpenQuizzDB_135/openquizzdb_135.json",
                                "https://www.kiwime.com/oqdb/files/3251276876/OpenQuizzDB_251/openquizzdb_251.json",
                                "https://www.kiwime.com/oqdb/files/2174457429/OpenQuizzDB_174/openquizzdb_174.json",
                                "https://www.kiwime.com/oqdb/files/3203999424/OpenQuizzDB_203/openquizzdb_203.json"],
                    gastronomie:["https://www.kiwime.com/oqdb/files/1009794887/OpenQuizzDB_009/openquizzdb_9.json",
                                "https://www.kiwime.com/oqdb/files/1011643469/OpenQuizzDB_011/openquizzdb_11.json",
                                "https://www.kiwime.com/oqdb/files/1080332383/OpenQuizzDB_080/openquizzdb_80.json",
                                "https://www.kiwime.com/oqdb/files/1096239985/OpenQuizzDB_096/openquizzdb_96.json"],
                    histoire:["https://www.kiwime.com/oqdb/files/1024448443/OpenQuizzDB_024/openquizzdb_24.json",
                              "https://www.kiwime.com/oqdb/files/2127734972/OpenQuizzDB_127/openquizzdb_127.json",
                              "https://www.kiwime.com/oqdb/files/2160467525/OpenQuizzDB_160/openquizzdb_160.json",
                              "https://www.kiwime.com/oqdb/files/1070896283/OpenQuizzDB_070/openquizzdb_70.json",
                              "https://www.kiwime.com/oqdb/files/2120982374/OpenQuizzDB_120/openquizzdb_120.json"],
                    litérature:["https://www.kiwime.com/oqdb/files/2140537378/OpenQuizzDB_140/openquizzdb_140.json",
                              "https://www.kiwime.com/oqdb/files/3219796254/OpenQuizzDB_219/openquizzdb_219.json",
                              "https://www.kiwime.com/oqdb/files/2139854353/OpenQuizzDB_139/openquizzdb_139.json"],
                    musique:["https://www.kiwime.com/oqdb/files/1095428646/OpenQuizzDB_095/openquizzdb_95.json",
                            "https://www.kiwime.com/oqdb/files/3236828436/OpenQuizzDB_236/openquizzdb_236.json",
                            "https://www.kiwime.com/oqdb/files/2159866252/OpenQuizzDB_159/openquizzdb_159.json"],
                    nature:["https://www.kiwime.com/oqdb/files/1012799553/OpenQuizzDB_012/openquizzdb_12.json",
                            "https://www.kiwime.com/oqdb/files/2199634974/OpenQuizzDB_199/openquizzdb_199.json",
                            "https://www.kiwime.com/oqdb/files/1065995275/OpenQuizzDB_065/openquizzdb_65.json"]}


# create seeding

require 'json'
require 'open-uri'
require 'nokogiri'
quizz_source_urls.each do |category, quizzes|
  quizzes.each do |quizz|
    url = quizz
    quizz_serialized = open(url).read
    quizz_json = JSON.parse(quizz_serialized)
      # all names are following the format Them (blabla) I choose to keep only the part before the parenthesis
    name = quizz_json["thème"].split("(").first.strip
    # each url contains several quizzes sorted by difficulty, i below choose to take only one randomly selected
    random_quizz = quizz_json["quizz"]["fr"].map{|diff| diff}.sample
    difficulty = random_quizz[0]
    category = category
    # creation of the quizz accordingly
    puts ("creation of the quizz : name : #{name}, category : #{category}, difficulty : #{difficulty}")
    new_quizz = Quizz.create({
      name: name,
      categorie: category,
      difficulty:difficulty
    })
    puts new_quizz.valid? ? "New quizz correctly saved" : "issue with the quizz, please see #{new_quizz.errors}"
    # creation des questions
    questions = random_quizz[1].first(3)
    questions.each do |question|
      # creation of a new instance of Question associated to this quizz (thanks to the quizz has many questions)
      new_question = new_quizz.questions.create({text: question["question"], anecdote: question["anecdote"]})
        # creation of the proposition the same way
        propositions = question["propositions"]
        correct_proposition = question["réponse"]
          # rework the propositions to have it in this format [[prop1,false],[prop2,true],[prop3,false]]
          propositions_for_creation = propositions.map{|prop| [prop,prop==correct_proposition]}
          propositions_for_creation.each do |proposition|
            new_question.answers.create({text: proposition[0], correct:proposition[1]})
          end
    end

  end
end
