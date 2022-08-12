defmodule ZigOne do
  use Zig

  ~Z"""
  /// nif: my_func/1
  fn my_func(val: i64) i64 {
    return val + 1;
  }
  """
end
