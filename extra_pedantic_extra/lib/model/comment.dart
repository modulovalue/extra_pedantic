/// Serializes a comment to a human readable string.
String comment_description(
  final Comment c,
) =>
    c.match(
      fixed: (final a) {
        switch (a.type) {
          case CommentType.empty:
            return "No comment.";
          case CommentType.too_pedantic:
            return "Too pedantic.";
          case CommentType.disturbs_flow:
            return "Disabled because this rule decreases productivity by disturbing flow.";
          case CommentType.too_pedantic_may_reconsider:
            return "Too pedantic.";
          case CommentType.obsolete_nnbd:
            return "Obsolete because of NNBD.";
        }
      },
      custom: (final a) => a.comment,
    );

enum CommentType {
  empty,
  too_pedantic,
  disturbs_flow,
  too_pedantic_may_reconsider,
  obsolete_nnbd,
}

const no_comment = CommentFixed(CommentType.empty);
const too_pedantic = CommentFixed(CommentType.too_pedantic);
const disturbs_flow = CommentFixed(CommentType.disturbs_flow);
const too_pedantic_may_reconsider = CommentFixed(CommentType.too_pedantic_may_reconsider);
const obsolete_nnbd = CommentFixed(CommentType.obsolete_nnbd);

abstract class Comment {
  Z match<Z>({
    required final Z Function(CommentFixed) fixed,
    required final Z Function(CommentCustom) custom,
  });
}

class CommentFixed implements Comment {
  final CommentType type;

  const CommentFixed(
    this.type,
  );

  @override
  Z match<Z>({
    required final Z Function(CommentFixed) fixed,
    required final Z Function(CommentCustom) custom,
  }) =>
      fixed(this);
}

class CommentCustom implements Comment {
  final String comment;

  const CommentCustom(
    this.comment,
  );

  @override
  Z match<Z>({
    required final Z Function(CommentFixed) fixed,
    required final Z Function(CommentCustom) custom,
  }) =>
      custom(this);
}
