import Foundation

extension Int {
	
    func bar(w: Int) -> String {
		let half = "▌"
		let full = "█"

		var bar = ""
		var count = 0
		while count < (self - 1) {
			bar += full
			count += 2
		}
		while count < self {
			bar += half
			count += 1
		}
		return String(format: "%\(w)d: \(bar)", self)
    }
}


for i: Int in [1,2,3,4,5,6,7,8,5,8,91,2,0,54,1,16,110] {
	print(i.bar(w: 3))
}
