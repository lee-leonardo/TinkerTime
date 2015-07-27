public class Model {
  boolean live;

  public Model() {
    Model createdModel = new Model();
    createdModel.setLive();
    return createdModel;
  }

  public boolean getLive() {
    return live;
  }

  private void setLive() {
    this.live = true;
  }

}
