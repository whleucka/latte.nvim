module.exports = grammar({
  name: 'latte',

  rules: {
    latte_template: $ => repeat(
      choice(
        $.block,
        $.content
      )
    ),

    block: $ => seq(
      '{block',
      $.block_name,
      '}',
      $.block_content,
      '{/block}'
    ),

    block_name: $ => /[A-Za-z_][A-Za-z0-9_]*/,

    block_content: $ => repeat(
      choice(
        $._text,
        $.block
      )
    ),

    content: $ => $._text,

    _text: $ => /[^\{\}]+/
  }
});
