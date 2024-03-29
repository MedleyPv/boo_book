typedef DynamicMap = Map<String, dynamic>;
typedef StringMap = Map<String, String>;

typedef PaginationResponse<T> = ({List<T> items, PaginationModel pagination});

enum TimerStatus {
  active,
  paused,
  disabled;

  bool get isActive => this == active;
  bool get isPaused => this == paused;
  bool get isDisabled => this == disabled;
}

class PaginationModel {
  final int limit;
  final int totalItems;
  final int startOffset;

  const PaginationModel({
    required this.limit,
    required this.totalItems,
    required this.startOffset,
  });

  const PaginationModel.initial({
    this.limit = 20,
  })  : totalItems = 0,
        startOffset = 0;
}
