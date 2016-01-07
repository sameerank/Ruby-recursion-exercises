require 'byebug'

def subsets(ary)
  return [[]] if ary.length == 0

  # provides subsets by compiling lists after rejecting one element at
  # each index
  # subs =
  # (0..ary.length - 1).to_a.map do |i|
  #   ary.reject.with_index do |_, j|
  #     j == i
  #   end
  # end

  exclude = ary.last
  subs = ary[0..-2]

  subs_extra = [exclude]
  subs.each do |el|
    subs_extra << [el] + [exclude]
  end
  subs = subs + subsets(subs)

# debugger
  # [ary] + subs.map { |sub| subsets(sub) }

end


if __FILE__ == $PROGRAM_NAME
  p subsets([1,2])
end
