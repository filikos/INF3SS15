note
	description: "Summary description for {NODE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NODE
create
	make

feature --Node Initialisation
	value: INTEGER
	left : detachable Node assign setLeft
	right: detachable Node assign setRight
	parent: detachable Node assign setParent


feature
	make(v: INTEGER)  -- Konstruktor
		do
			value:=v
			ensure
				value = v
		end
feature --Setters
	setLeft (L : detachable Node)
	do
		left:=L
		ensure
			left= L
	end

	setRight (R : detachable Node)
	do
		right:=R
		ensure
			right = R
	end

	setParent (P : detachable Node)
	do
		parent:=P
	end


feature --Getters
	getLeft:detachable NODE
	do
		if left /= Void then
			Result := left
		end

		ensure
			Result = left
	end

	getRight:detachable NODE
	do
		if left/=right then
			Result := right
		end
		ensure
			Result = right
	end

	getParent: detachable NODE
	do
		if parent /= Void then
			Result:=parent
		end
		ensure
			Result = parent
	end

	getValue: INTEGER
	do
		Result:=value
	end
end
