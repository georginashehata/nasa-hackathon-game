extends Sprite2D


@export var dialogue_label: Label        # اسحبي Label من الشجرة وحطيه هنا في Inspector
@onready var trigger: Area2D = $Trigger

var talked := false

func _ready() -> void:
	# لو ما اتولدتش الدالة تلقائيًا، تقدري توصّلي الإشارة بالكود برضه:
	trigger.body_entered.connect(_on_trigger_body_entered)

func _on_trigger_body_entered(body: Node2D) -> void:
	if talked:
		return
	if not body.is_in_group("player"):   # مهم: البطريق في جروب player
		return
	talked = true

	say("👨‍🌾 Farmer: Oh, Pingo! My phone signal is gone. I can’t call my family…")

	await get_tree().create_timer(2.0).timeout
	say("🐧 Penguin: Don’t worry! I’ll check what’s happening and help you.")

func say(text: String) -> void:
	if dialogue_label:
		dialogue_label.text = text
		dialogue_label.show()
