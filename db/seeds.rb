# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
clip_sub = Fansub.create!(
  name: "Clip-sub",
  homepage: "http://clip-sub.com/"
).reload
zingfs = Fansub.create!(
name: "Zing Fansub",
homepage: "http://www.zingfansub.ws/zfs/"
)

Tag.create!(
  fansub: clip_sub,
  post: "section.post",
  title: "header.entry-header h1.entry-title a",
  link: "header.entry-header h1.entry-title a",
  image_url: "img.lazy",
  public_date: "span.date.updated a"
)

Tag.create!(
fansub: zingfs,
post: "div.post",
title: "h2.storytitle a",
link: "h2.storytitle a",
image_url: "img.lazy",
public_date: "div.metafield div.metafield_content b.published"
)
