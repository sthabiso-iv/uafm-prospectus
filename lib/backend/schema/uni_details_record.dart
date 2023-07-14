import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UniDetailsRecord extends FirestoreRecord {
  UniDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UniName" field.
  String? _uniName;
  String get uniName => _uniName ?? '';
  bool hasUniName() => _uniName != null;

  // "UniLogo" field.
  String? _uniLogo;
  String get uniLogo => _uniLogo ?? '';
  bool hasUniLogo() => _uniLogo != null;

  // "UniColour" field.
  Color? _uniColour;
  Color? get uniColour => _uniColour;
  bool hasUniColour() => _uniColour != null;

  // "UniGallery" field.
  List<String>? _uniGallery;
  List<String> get uniGallery => _uniGallery ?? const [];
  bool hasUniGallery() => _uniGallery != null;

  // "UniProspectusLink" field.
  String? _uniProspectusLink;
  String get uniProspectusLink => _uniProspectusLink ?? '';
  bool hasUniProspectusLink() => _uniProspectusLink != null;

  // "UniAPSCalcLink" field.
  String? _uniAPSCalcLink;
  String get uniAPSCalcLink => _uniAPSCalcLink ?? '';
  bool hasUniAPSCalcLink() => _uniAPSCalcLink != null;

  // "UniWebLink" field.
  String? _uniWebLink;
  String get uniWebLink => _uniWebLink ?? '';
  bool hasUniWebLink() => _uniWebLink != null;

  // "UniApplyLink" field.
  String? _uniApplyLink;
  String get uniApplyLink => _uniApplyLink ?? '';
  bool hasUniApplyLink() => _uniApplyLink != null;

  // "UniAcronym" field.
  String? _uniAcronym;
  String get uniAcronym => _uniAcronym ?? '';
  bool hasUniAcronym() => _uniAcronym != null;

  // "UniAppOpen" field.
  DateTime? _uniAppOpen;
  DateTime? get uniAppOpen => _uniAppOpen;
  bool hasUniAppOpen() => _uniAppOpen != null;

  // "UniAppClose" field.
  DateTime? _uniAppClose;
  DateTime? get uniAppClose => _uniAppClose;
  bool hasUniAppClose() => _uniAppClose != null;

  // "UniDecsription" field.
  String? _uniDecsription;
  String get uniDecsription => _uniDecsription ?? '';
  bool hasUniDecsription() => _uniDecsription != null;

  // "UniLocation" field.
  String? _uniLocation;
  String get uniLocation => _uniLocation ?? '';
  bool hasUniLocation() => _uniLocation != null;

  void _initializeFields() {
    _uniName = snapshotData['UniName'] as String?;
    _uniLogo = snapshotData['UniLogo'] as String?;
    _uniColour = getSchemaColor(snapshotData['UniColour']);
    _uniGallery = getDataList(snapshotData['UniGallery']);
    _uniProspectusLink = snapshotData['UniProspectusLink'] as String?;
    _uniAPSCalcLink = snapshotData['UniAPSCalcLink'] as String?;
    _uniWebLink = snapshotData['UniWebLink'] as String?;
    _uniApplyLink = snapshotData['UniApplyLink'] as String?;
    _uniAcronym = snapshotData['UniAcronym'] as String?;
    _uniAppOpen = snapshotData['UniAppOpen'] as DateTime?;
    _uniAppClose = snapshotData['UniAppClose'] as DateTime?;
    _uniDecsription = snapshotData['UniDecsription'] as String?;
    _uniLocation = snapshotData['UniLocation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UniDetails');

  static Stream<UniDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UniDetailsRecord.fromSnapshot(s));

  static Future<UniDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UniDetailsRecord.fromSnapshot(s));

  static UniDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UniDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UniDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UniDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UniDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UniDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUniDetailsRecordData({
  String? uniName,
  String? uniLogo,
  Color? uniColour,
  String? uniProspectusLink,
  String? uniAPSCalcLink,
  String? uniWebLink,
  String? uniApplyLink,
  String? uniAcronym,
  DateTime? uniAppOpen,
  DateTime? uniAppClose,
  String? uniDecsription,
  String? uniLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UniName': uniName,
      'UniLogo': uniLogo,
      'UniColour': uniColour,
      'UniProspectusLink': uniProspectusLink,
      'UniAPSCalcLink': uniAPSCalcLink,
      'UniWebLink': uniWebLink,
      'UniApplyLink': uniApplyLink,
      'UniAcronym': uniAcronym,
      'UniAppOpen': uniAppOpen,
      'UniAppClose': uniAppClose,
      'UniDecsription': uniDecsription,
      'UniLocation': uniLocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class UniDetailsRecordDocumentEquality implements Equality<UniDetailsRecord> {
  const UniDetailsRecordDocumentEquality();

  @override
  bool equals(UniDetailsRecord? e1, UniDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.uniName == e2?.uniName &&
        e1?.uniLogo == e2?.uniLogo &&
        e1?.uniColour == e2?.uniColour &&
        listEquality.equals(e1?.uniGallery, e2?.uniGallery) &&
        e1?.uniProspectusLink == e2?.uniProspectusLink &&
        e1?.uniAPSCalcLink == e2?.uniAPSCalcLink &&
        e1?.uniWebLink == e2?.uniWebLink &&
        e1?.uniApplyLink == e2?.uniApplyLink &&
        e1?.uniAcronym == e2?.uniAcronym &&
        e1?.uniAppOpen == e2?.uniAppOpen &&
        e1?.uniAppClose == e2?.uniAppClose &&
        e1?.uniDecsription == e2?.uniDecsription &&
        e1?.uniLocation == e2?.uniLocation;
  }

  @override
  int hash(UniDetailsRecord? e) => const ListEquality().hash([
        e?.uniName,
        e?.uniLogo,
        e?.uniColour,
        e?.uniGallery,
        e?.uniProspectusLink,
        e?.uniAPSCalcLink,
        e?.uniWebLink,
        e?.uniApplyLink,
        e?.uniAcronym,
        e?.uniAppOpen,
        e?.uniAppClose,
        e?.uniDecsription,
        e?.uniLocation
      ]);

  @override
  bool isValidKey(Object? o) => o is UniDetailsRecord;
}
