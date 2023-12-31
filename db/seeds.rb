3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
    remaining essentially unchanged. It was popularised in the 1960s.",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

8.times do |portfolio|
  Portfollio.create(
    title: "Portfolio title #{portfolio}",
    subtitle: "Ruby on Rails",
    body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
    remaining essen.",
    main_image:"https://placehold.co/600x400.png",
    thumb_image:"https://placehold.co/350x200.png",
  )
end

1.times do |portfolio|
  Portfollio.create(
    title: "Portfolio title #{portfolio}",
    subtitle: "React",
    body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
    remaining essen.",
    main_image:"https://placehold.co/600x400.png",
    thumb_image:"https://placehold.co/350x200.png",
  )
end