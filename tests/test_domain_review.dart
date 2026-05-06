import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(69, 30, 10, 59);
  assert(DomainReviewLens.score(item) == 197);
  assert(DomainReviewLens.lane(item) == 'ship');
}
