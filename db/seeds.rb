# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all;
Submission.delete_all;

u1 = User.create(name: "User One", email: "test1@test.com", about: "I'm all about user one.");
u2 = User.create(name: "User Two", email: "test2@test.com", about: "I'm all about user two.");

s1 = Submission.create(title: "Article One: Text body", body: "This is the body of a text article", user_id: u1.id);
s2 = Submission.create(title: "Article Two: Url-based", url: "http://www.wcvb.com/politics/massachusetts-voters-to-decide-4-ballot-questions/29518228?absolute=true", user_id: u1.id);
