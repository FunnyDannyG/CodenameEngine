package funkin.backend.scripting.events;

import funkin.game.Character;
import funkin.game.NoteSkin;
import funkin.game.Strum;

final class StrumCreationEvent extends CancellableEvent {
	@:dox(hide) public var __doAnimation = true;


	/**
	 * The strum that is being created
	 */
	public var strum:Strum;

	public var characters:Array<Character>;

	public var noteSkinData:NoteSkin;

	/**s
	 * Player ID
	 */
	public var player:Int;

	/**
	 * Strum ID, for the sprite.
	 */
	public var strumID:Int;

	/**
	 * Animation prefix (`left` = `arrowLEFT`, `left press`, `left confirm`).
	 */
	public var animPrefix:String;

	/**
	 * Cancels the animation that makes the strum "land" in the strumline.
	 */
	public function cancelAnimation() {__doAnimation = false;}
	@:dox(hide) public function preventAnimation() {cancelAnimation();}
}