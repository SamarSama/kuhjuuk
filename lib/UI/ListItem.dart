class ListItem{
  String _ProductName;
  String _Price;
  String _image;
  bool _IsSelected;
  ListItem(this._ProductName,this._IsSelected,this._image,this._Price);

  bool get IsSelected => _IsSelected;

  set IsSelected(bool value) {
    _IsSelected = value;
  }

  String get ProductName => _ProductName;

  set ProductName(String value) {
    _ProductName = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }
  String get Price => _Price;

  set Price(String value) {
    _Price = value;
  }
}