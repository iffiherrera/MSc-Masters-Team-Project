package online;

import common.ViewInterface;
import common.Card;

import java.util.ArrayList;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;

public class OnlineDataBuffer implements ViewInterface{
	private OnlineGameplayController ogc;
	private Integer decksize;
	private Integer round;
	private Integer current_player;
	private Card card;
	private String category;
	private ArrayList<int[]> player_values;
	private Integer winning_player;
	private Boolean was_draw ;
	private ArrayList<Integer> losing_players;
	private Integer communal_pile_size;
	private Integer overall_winner;
	private Boolean was_quit;
	private String state;
	private ObjectWriter oWriter = new ObjectMapper().writerWithDefaultPrettyPrinter();
	
	public void setOGC(OnlineGameplayController inputOGC) {
		this.ogc = inputOGC;
	}
	
	public void resetValues() {
		decksize = null;
		round = null;
		current_player = null;
		card = null;
		category = null;
		player_values = null;
		winning_player = null;
		was_draw = null;
		losing_players = null;
		communal_pile_size = null;
		overall_winner = null;
		was_quit = null;
	}
	
	public String toJSON() {
		return this.toJSON(true);
	}
	
	public String toJSON(boolean willReset) {
		try {
			String jsonOutput = oWriter.writeValueAsString(this);
			if(willReset) {
				resetValues();
				}
			return jsonOutput;
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	// ~~~~~~~~~~~~~~~~~~~~~~ Gameplay Controller Data Gathering Methods
	
	public void setState() {
		this.state = ogc.getState();
	}
	
	public void beginningOfRound(int deck_size, int round) {
		this.decksize = deck_size;
		this.round = round;
		setState();
	}
	
	public void currentPlayer(int player_number) {
		this.current_player = player_number;
		setState();
	}
	
	public void showTopCard(Card card) {
		this.card = card;
		setState();
	}
	
	public void showCategory(String category) {
		this.category = category;
		setState();
	}
	
	public void playerHasValue(int player_number, int value) {
		int[] input = {player_number, value};
		this.player_values.add(input);
		setState();
	}
	
	public void theWinnerIs(int player_number) {
		this.winning_player = player_number;
		setState();
	}
	
	public void itsADraw() {
		this.was_draw = true;
		setState();
	}
	
	public void playerLoses(int player_number) {
		this.losing_players.add(player_number);
		setState();
	}
	
	public void showCommunalPileSize(int pile_size) {
		this.communal_pile_size = pile_size;
		setState();
	}
	
	public void overallWinner(int player_number) {
		this.overall_winner = player_number;
		setState();
	}
	
	public void quitGame() {
		this.was_quit = true;
		setState();
	}
	
	// ~~~~~~~~~~~~~~~~~~~~~~ Getters for serializer
	
	public Integer getDecksize() {
		return decksize;
	}
	
	public Integer getRound() {
		return round;
	}
	
	public Integer getCurrent_player() {
		return current_player;
	}
	
	public Card getCard() {
		return card;
	}
	
	public String getCategory() {
		return category;
	}
	
	public ArrayList<int[]> getPlayer_values() {
		return player_values;
	}
	
	public Integer getWinning_player() {
		return winning_player;
	}
	
	public Boolean getWas_draw() {
		return was_draw;
	}
	
	public ArrayList<Integer> getLosing_players(){
		return losing_players;
	}
	
	public Integer getCommunal_pile_size() {
		return communal_pile_size;
	}
	
	public Integer getOverall_winner() {
		return overall_winner;
	}
	
	public Boolean getWas_quit() {
		return was_quit;
	}
	
	public String getState() {
		return state;
	}
	
	// unused method
	public String getCategory(Card card) {return null;}
}