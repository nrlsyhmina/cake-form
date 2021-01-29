package model;

public class Cake {
	String ck_name, ck_flavour;
	float ck_price;
	int ck_quantity;
	public Cake(String ck_name, String ck_flavour, float ck_price, int ck_quantity) {
		super();
		this.ck_name = ck_name;
		this.ck_flavour = ck_flavour;
		this.ck_price = ck_price;
		this.ck_quantity = ck_quantity;
	}
	public Cake()
	{}
	public String getCk_name() {
		return ck_name;
	}
	public void setCk_name(String ck_name) {
		this.ck_name = ck_name;
	}
	public String getCk_flavour() {
		return ck_flavour;
	}
	public void setCk_flavour(String ck_flavour) {
		this.ck_flavour = ck_flavour;
	}
	public float getCk_price() {
		return ck_price;
	}
	public void setCk_price(float ck_price) {
		this.ck_price = ck_price;
	}
	public int getCk_quantity() {
		return ck_quantity;
	}
	public void setCk_quantity(int ck_quantity) {
		this.ck_quantity = ck_quantity;
	}
	

}
