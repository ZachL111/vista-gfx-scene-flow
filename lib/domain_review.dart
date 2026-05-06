class DomainReview {
  final int signal;
  final int slack;
  final int drag;
  final int confidence;

  const DomainReview(this.signal, this.slack, this.drag, this.confidence);
}

class DomainReviewLens {
  static int score(DomainReview item) =>
      item.signal * 2 + item.slack + item.confidence - item.drag * 3;

  static String lane(DomainReview item) {
    final value = score(item);
    if (value >= 140) return 'ship';
    if (value >= 105) return 'watch';
    return 'hold';
  }
}
