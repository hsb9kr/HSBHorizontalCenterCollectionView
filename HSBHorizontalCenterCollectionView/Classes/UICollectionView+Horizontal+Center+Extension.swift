//
//  ViewController.swift
//  CollectionCenterAlign
//
//  Created by 홍상보 on 16/04/2019.
//  Copyright © 2019 binaryrocket. All rights reserved.
//

public extension UICollectionView {
	
	func center(scrollView: UIScrollView, targetContentOffset: UnsafeMutablePointer<CGPoint>, count: Int, layout: UICollectionViewFlowLayout? = nil, item space: Float? = nil, item width: Float? = nil) {
		
		guard !(layout == nil && (space == nil && width == nil))  else { return }
		
		let space: Float = layout == nil ? space! : Float(layout!.minimumLineSpacing)
		let width: Float = layout == nil ? width! : Float(layout!.itemSize.width) + space
		let currentOffset = scrollView.contentOffset.x
		let targetOffset =  targetContentOffset.pointee.x
		var newTargetOffset: Float = 0
		var index: Int = 0
		
		if targetOffset > currentOffset {
			index = Int(ceilf(Float(currentOffset) / width))
			newTargetOffset = Float(index) * width
		} else {
			index = Int(floorf(Float(currentOffset) / width))
			newTargetOffset = Float(index) * width
		}
		
		if newTargetOffset < 0 {
			newTargetOffset = 0
		} else if newTargetOffset > Float(scrollView.contentSize.width) || index == count - 1 {
			newTargetOffset = Float(scrollView.contentSize.width - scrollView.bounds.width)
		} else if index > 0 && index < count - 1 {
			newTargetOffset -= (Float(scrollView.bounds.width) - (width + space)) / 2
		}
		
		targetContentOffset.pointee.x = currentOffset
		
		scrollView.setContentOffset(CGPoint(x: CGFloat(newTargetOffset), y: 0), animated: true)
	}
}

