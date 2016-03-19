require 'byebug'

def subsets(ary)
  return [[]] if ary.length == 0

  exclude = ary.last
  subs = ary[0..-2]

  subs_extra = [exclude]
  subs.each do |el|
    subs_extra << [el] + [exclude]
  end
  subs = subs + subsets(subs)
  
end


if __FILE__ == $PROGRAM_NAME
  p subsets([1,2])
end
