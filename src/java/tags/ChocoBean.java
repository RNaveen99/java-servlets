package tags;

import java.io.Serializable;

public class ChocoBean implements Serializable{
    private String texture;
    private String[] chocolate;

    public ChocoBean() {
        this.chocolate = new String[2];
    }

    public void setTexture(String texture) {
        this.texture = texture;
        if (this.texture.equals("Chewy")) {
            this.chocolate[0] = "FiveStar";
            this.chocolate[1] = "BarOne";
        } else if (this.texture.equals("Crunchy")) {
            this.chocolate[0] = "Munch";
            this.chocolate[1] = "KitKat";
        }
    }

    public void setChocolate(String[] chocolate) {
        this.chocolate = chocolate;
    }

    public String getTexture() {
        return texture;
    }

    public String[] getChocolate() {
        return chocolate;
    }
}
