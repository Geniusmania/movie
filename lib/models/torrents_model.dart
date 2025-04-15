class Torrent {
  String url;
  String hash;
  String quality;
  String type;
  int isRepack;
  String videoCodec;
  String bitDepth;
  String audioChannels;
  int seeds;
  int peers;
  String size;
  int sizeBytes;
  DateTime dateUploaded;
  int dateUploadedUnix;

  Torrent({
    required this.url,
    required this.hash,
    required this.quality,
    required this.type,
    required this.isRepack,
    required this.videoCodec,
    required this.bitDepth,
    required this.audioChannels,
    required this.seeds,
    required this.peers,
    required this.size,
    required this.sizeBytes,
    required this.dateUploaded,
    required this.dateUploadedUnix,
  });

  factory Torrent.fromJson(Map<String, dynamic> json) => Torrent(
    url: json["url"] ?? '',
    hash: json["hash"] ?? '',
    quality: json["quality"] ?? '',
    type: json["type"] ?? '',
    isRepack: _parseInt(json["is_repack"]),
    videoCodec: json["video_codec"] ?? '',
    bitDepth: json["bit_depth"] ?? '',
    audioChannels: json["audio_channels"] ?? '',
    seeds: _parseInt(json["seeds"]),
    peers: _parseInt(json["peers"]),
    size: json["size"] ?? '',
    sizeBytes: _parseInt(json["size_bytes"]),
    dateUploaded: _parseDate(json["date_uploaded"]),
    dateUploadedUnix: _parseInt(json["date_uploaded_unix"]),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "hash": hash,
    "quality": quality,
    "type": type,
    "is_repack": isRepack,
    "video_codec": videoCodec,
    "bit_depth": bitDepth,
    "audio_channels": audioChannels,
    "seeds": seeds,
    "peers": peers,
    "size": size,
    "size_bytes": sizeBytes,
    "date_uploaded": dateUploaded.toIso8601String(),
    "date_uploaded_unix": dateUploadedUnix,
  };
}

int _parseInt(dynamic value) {
  if (value is int) return value;
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

DateTime _parseDate(dynamic value) {
  if (value is String) {
    try {
      return DateTime.parse(value);
    } catch (e) {
      return DateTime.now(); // fallback
    }
  }
  return DateTime.now();
}
