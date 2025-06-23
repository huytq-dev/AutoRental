package Model.DTO;

public class StatusOption {
    public String value;
    public String display;
    public StatusOption(String value, String display) {
        this.value = value;
        this.display = display;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }
}
