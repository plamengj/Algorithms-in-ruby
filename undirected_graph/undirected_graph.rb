#lib/undirected_graph.rb

require "directed_graph"

class UndirectedGraph

	def initialize()
		@g = DirectedGraph.new
	end

	#accessor methods:

	def vertices
		@g.vertices
	end

	def neighbors(vertex)
		@g.neighbors(vertex)
	end

	#if there is no edge throws and ArgumentError
	def weight(vertex1, vertex2)
		@g.weight(vertex1, vertex2)
	end

	def degree(vertex)
		@g.degree(vertex)
	end

	def has_vertex?(vertex)
		@g.has_vertex?(vertex)
	end

	def has_edge?(vertex1, vertex2)
		@g.has_edge?(vertex1, vertex2)
	end

	def size
		@g.size
	end

	#mutator methods:

	#adds a vertex to the graph
	#if a vertex is already in the graph, does nothing
	#returns true iff a vertex was added (false if the vertex was already in the graph)
	def add_vertex!(vertex)
		@g.add_vertex!(vertex)
	end

	#adds an edge with the given weight between two vertices, starting at vertex1 and pointing to the vertex2
	#if there is already an edge with said weight, it updates the weight
	#if either one (or both) of the vertices are not in the graph, it throws an ArgumentError
	#also, if you're trying to make a self_loop, throws an error
	def add_edge!(vertex1, vertex2, weight)
		@g.add_edge!(vertex1, vertex2, weight)
		@g.add_edge!(vertex2, vertex1, weight)
	end

	#removes a vertex and and edges associated with it
	#if there is no such vertex in the graph, throws an ArgumentError
	#returns a hash of the removed vertex's out_neighborhood
	def remove_vertex!(vertex)
		@g.remove_vertex!(vertex)
	end

	#removes an edge between two vertices (vertex1 <-> vertex2)
	#returns the weight of the removed edge
	#if there was no such edge (or either one of the vertices were not in the vertex, throws an ArgumentError)
	def remove_edge!(vertex1, vertex2)
		@g.remove_edge!(vertex1, vertex2)
		@g.remove_edge!(vertex2, vertex1)
	end
end