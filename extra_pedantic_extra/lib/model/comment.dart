/// Serializes a comment to a human readable string.
String comment_description(
  final EPComment c,
) =>
    c.match(
      fixed: (final a) {
        switch (a.type) {
          case EPCommentType.empty:
            return "No comment.";
          case EPCommentType.too_pedantic:
            return "Too pedantic.";
          case EPCommentType.disturbs_flow:
            return "Disabled because this rule decreases productivity by disturbing flow.";
          case EPCommentType.too_pedantic_may_reconsider:
            return "Too pedantic.";
          case EPCommentType.obsolete_nnbd:
            return "Obsolete because of NNBD.";
          case EPCommentType.too_many_false_positives:
            return "Too many false positives.";
        }
      },
      custom: (final a) => a.comment,
    );

enum EPCommentType {
  empty,
  too_pedantic,
  disturbs_flow,
  too_pedantic_may_reconsider,
  obsolete_nnbd,
  too_many_false_positives,
}

const no_comment = EPCommentFixed(EPCommentType.empty);
const too_pedantic = EPCommentFixed(EPCommentType.too_pedantic);
const disturbs_flow = EPCommentFixed(EPCommentType.disturbs_flow);
const too_pedantic_may_reconsider = EPCommentFixed(EPCommentType.too_pedantic_may_reconsider);
const obsolete_nnbd = EPCommentFixed(EPCommentType.obsolete_nnbd);
const too_many_false_positives = EPCommentFixed(EPCommentType.too_many_false_positives);

abstract class EPComment {
  Z match<Z>({
    required final Z Function(EPCommentFixed) fixed,
    required final Z Function(EPCommentCustom) custom,
  });
}

class EPCommentFixed implements EPComment {
  final EPCommentType type;

  const EPCommentFixed(
    this.type,
  );

  @override
  Z match<Z>({
    required final Z Function(EPCommentFixed) fixed,
    required final Z Function(EPCommentCustom) custom,
  }) =>
      fixed(this);
}

class EPCommentCustom implements EPComment {
  final String comment;

  const EPCommentCustom(
    this.comment,
  );

  @override
  Z match<Z>({
    required final Z Function(EPCommentFixed) fixed,
    required final Z Function(EPCommentCustom) custom,
  }) =>
      custom(this);
}
