class User {
  int? id;
  String? holderName;
  String? cardNumber;

  User(this.id, this.holderName, this.cardNumber);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    holderName = json['holderName'];
    cardNumber = json['cardNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['holderName'] = this.holderName;
    data['cardNumber'] = this.cardNumber;
    return data;
  }

  @override
  String toString() {
    return 'User{id: $id, holderName: $holderName, cardNumber: $cardNumber}';
  }
}