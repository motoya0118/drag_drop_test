# dragndrop_kanban_app/db/seed.rb
Card.destroy_all
KanbanColumn.destroy_all
Kanban.destroy_all
my_kanban = Kanban.create(
  name: "New Lamborgucci project",
  description: "Project to build the most esthetically car ever made.",
);
backlog = KanbanColumn.create(
  name: "Backlog",
  kanban: my_kanban
)
Card.create(content: "Build engine", position: 0, kanban_column: backlog)
Card.create(content: "Purchase the tires", position: 1, kanban_column: backlog)
Card.create(content: "Code the cockpit software", position: 2, kanban_column: backlog)
todo = KanbanColumn.create(
  name: "To Do",
  kanban: my_kanban
)
Card.create(content: "Design the car", position: 0, kanban_column: todo)
completed = KanbanColumn.create(
  name: "Completed",
  kanban: my_kanban
)
Card.create(content: "Build the engineer team", position: 0, kanban_column: completed)
Card.create(content: "Find fundings", position: 1, kanban_column: completed)