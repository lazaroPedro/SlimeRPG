using Godot;
using System;




[GlobalClass]
public partial class CharacterStats : Resource
{   

	[Signal]
	public delegate void HealthChangedEventHandler(int newHealth);

	[Signal]
	public delegate void StaminaChangedEventHandler(int newStamina);

	private int level = 1;
	private int xp = 0;
	
	private int baseHealth  = 100;

	private int baseStamina = 100;

	private int currentHealth  = 100;
	private int currentStamina = 100;
	
	public int movement = 5;
	private int resistence = 0;

	[ExportGroup("Stats")]
	[Export]
	private int strength = 10;
	[Export]
	private int dexterity = 10;
	[Export]
	private int intelligence = 10;
	[Export]
	private int vitality = 10;


	public int damage() {
		return strength + (int)(dexterity * 0.5);
	}
	public void modifyHealth(int amount) {
		currentHealth = Mathf.Clamp(currentHealth + amount, 0, baseHealth);
		EmitSignal(SignalName.HealthChanged, currentHealth);
	}
		
	public void modifyStamina(int amount) {
		currentStamina = Mathf.Clamp(currentStamina + amount, 0, baseStamina);
		EmitSignal(SignalName.StaminaChanged, currentStamina);
	}

}
