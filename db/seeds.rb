# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t=""
l=1
error=""
Dir['/Users/zahra/Documents/workspace/CheckStyle/out/final/*'].each do |fname|
  s = ""
  error = ""
  File.open(fname, "r") do |f|
    lineNum=1
    f.each_line do |line|
      if (lineNum==1)
        error+=line
      else
        s += line
        s += " "
      end
      lineNum+=1
    end
  end
  farray = fname.split("/")
  lev = farray[farray.length-1]
  strlevel = lev[0..(lev.length-6)]
  finallevel = Integer(strlevel)
  if (finallevel < 7) and (finallevel > 0)
    Program.create(code: s, difficulty:"beginner", level:strlevel, errorindexes:error)
  elsif (finallevel>6) and (finallevel<13)
    Program.create(code: s, difficulty:"intermediate", level:strlevel, errorindexes:error)
  else
    Program.create(code: s, difficulty:"advanced", level:strlevel, errorindexes:error)
  end
  l += 1
end

# t=""
# l=1
# error = ""
# Dir['/Users/zahra/Documents/workspace/Final/2/*'].each do |fname|
#   s = ""
#   File.open(fname, "r") do |f|
#     lineNum=1
#     f.each_line do |line|
#       if (lineNum==1)
#         error+=line
#       else
#         s += line
#         s += " "
#       end
#       lineNum+=1
#     end
#   end
#   Program.create(code: s, difficulty:"intermediate", level:l.to_s, errorindexes:error)
#   l += 1
# end
#
# t=""
# l=1
# error = ""
# Dir['/Users/zahra/Documents/workspace/Final/3/*'].each do |fname|
#   s = ""
#   File.open(fname, "r") do |f|
#     lineNum=1
#     f.each_line do |line|
#       if (lineNum==1)
#         error+=line
#       else
#         s += line
#         s += " "
#       end
#       lineNum+=1
#     end
#   end
#   Program.create(code: s, difficulty:"advanced", level:l.to_s, errorindexes:error)
#   l += 1
# end

# user = User.create(username:"zahra", levelcompleted:"1")
user = User.create(email:'test@test.com', password:'password', levelcompleted:'1', consent:'1')
# user = User.create(email:'ghaed@vt.edu', password:'test123')pub1 = PublishingHouse.create(name: "ABC Publisher", discount: 40)
survey1 = Survey.create(email: 'test@test.com', s1:'1', s2:'2', s3:'3', s4:'4')

tap1 = Tap.create(email: 'test@test.com', word:'public', success:'no', time:'30', level:'3')

info1 = Info.create(email: 'test@test.com', gender:'female', age:'24', experience:'2+', enjoy:'3', language:'Java')
