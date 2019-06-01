// To parse this JSON data, do
//
//     final notes = notesFromJson(jsonString);

import 'dart:convert';

List<Notes> notesFromJson(String str) => new List<Notes>.from(json.decode(str).map((x) => Notes.fromJson(x)));

String notesToJson(List<Notes> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Notes {
    int id;
    String tanggal;
    String pengeluaran;
    int biaya;

    Notes({
        this.id,
        this.tanggal,
        this.pengeluaran,
        this.biaya,
    });

    factory Notes.fromJson(Map<String, dynamic> json) => new Notes(
        id: json["id"],
        tanggal: json["tanggal"],
        pengeluaran: json["pengeluaran"],
        biaya: json["biaya"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "tanggal": tanggal,
        "pengeluaran": pengeluaran,
        "biaya": biaya,
    };
}
