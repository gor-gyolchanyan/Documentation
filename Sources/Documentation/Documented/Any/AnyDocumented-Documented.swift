//
// This is free and unencumbered software released into the public domain.
//
// Anyone is free to copy, modify, publish, use, compile, sell, or
// distribute this software, either in source code form or as a compiled
// binary, for any purpose, commercial or non-commercial, and by any
// means.
//
// In jurisdictions that recognize copyright laws, the author or authors
// of this software dedicate any and all copyright interest in the
// software to the public domain. We make this dedication for the benefit
// of the public at large and to the detriment of our heirs and
// successors. We intend this dedication to be an overt act of
// relinquishment in perpetuity of all present and future rights to this
// software under copyright law.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//
// For more information, please refer to <http://unlicense.org/>
//  

//MARK: - AnyDocument (Documented)

public extension AnyDocumented where Summary == Void, Overview == Void, Explanation == Void {

	///
	@inlinable
	init<Base>(terse base: Base) where Base: Documented, Base.Title == Title {
		self.init(core: AnyDocumentedTerseCore(base))
	}

	///
	@inlinable
	init<Base>(_ base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Void, Base.Overview == Void, Base.Explanation == Void {
		self.init(terse: base)
	}
}

public extension AnyDocumented where Overview == Void, Explanation == Void {

	///
	@inlinable
	init<Base>(concise base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary {
		self.init(core: AnyDocumentedConciseCore(base))
	}

	///
	@inlinable
	init<Base>(_ base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary, Base.Overview == Void, Base.Explanation == Void {
		self.init(concise: base)
	}
}

public extension AnyDocumented where Explanation == Void {

	///
	@inlinable
	init<Base>(thorough base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary, Base.Overview == Overview {
		self.init(core: AnyDocumentedThoroughCore(base))
	}

	///
	@inlinable
	init<Base>(_ base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary, Base.Overview == Overview, Base.Explanation == Void {
		self.init(thorough: base)
	}
}

public extension AnyDocumented {

	///
	@inlinable
	init<Base>(exhaustive base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary, Base.Overview == Overview, Base.Explanation == Explanation {
		self.init(core: AnyDocumentedExhaustiveCore(base))
	}

	///
	@inlinable
	init<Base>(_ base: Base) where Base: Documented, Base.Title == Title, Base.Summary == Summary, Base.Overview == Overview, Base.Explanation == Explanation {
		self.init(exhaustive: base)
	}
}
