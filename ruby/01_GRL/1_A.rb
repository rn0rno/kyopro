#!/usr/bin/env ruby

# 作ってみたが，最初から設計し直す必要がある
# class Node
#   attr_accessor :id, :edges, :cost, :fixed
#
#   def initialize(id, edges = [], cost = -1, fixed = false)
#     @id, @edges, @cost, @fixed = id, edges, cost, fixed
#   end
#
#   def show
#     puts "Node (#{@id}) COST: #{cost}"
#     @edges.each do |edge|
#       puts "->#{edge[0]} cost:#{edge[1]}"
#     end
#   end
#
#   def search
#     @edges.each do |edge|
#
#     end
#   end
# end
#
# v, e, r = gets.split.map(&:to_i)
#
# nodes = []
# v.times do |i|
#   nodes << Node.new(i)
# end
# nodes[r].cost = 0
#
# e.times do
#   s, t, d = gets.split.map(&:to_i)
#   nodes[s].edges << [t, d]
# end
#
# processing = true
# while processing
#   processing = false
#   ここの部分で最小のノードを毎回選択する必要がある
#   nodes.sort_by(&:cost).each do |node|
#     next if node.cost == -1 || node.fixed
#
#     puts "#{node.inspect}"
#     processing = true
#     node.edges.each do |edge|
#       cost = node.cost + edge[1]
#       nodes[edge[0]].cost = cost if nodes[edge[0]].cost == -1 || nodes[edge[0]].cost > cost
#     end
#     node.fixed = true
#   end
# end
#
# v.times do |i|
#   puts (nodes[i].cost == -1) ? 'INF' : nodes[i].cost
# end
