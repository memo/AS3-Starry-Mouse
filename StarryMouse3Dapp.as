﻿/***********************************************************************Copyright (c) 2008, Memo Akten, www.memo.tvThis program is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any later version.This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty ofMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with this program.  If not, see <http://www.gnu.org/licenses/>.	***********************************************************************/	/***********************************************************************MAIN DOCUMENT CLASSmake sure you have 2 sprites in your library exported for actionscript with linkage identifiers set to RedStar and BlueStar	***********************************************************************/	package {	import flash.display.*;	import msa.sprite3d.*;		public class StarryMouse3Dapp extends Sprite {				public function StarryMouse3Dapp() {			addChild( new ParticleSystem3D(2000, RedStar) );		// create a new ParticleSystem using the RedStar Class and add to display list			addChild( new ParticleSystem3D(2000, BlueStar) );		// create a new ParticleSystem using the BlueStar Class and add to display list									stage.align = StageAlign.TOP_LEFT;					// align stage to top left			stage.scaleMode = StageScaleMode.NO_SCALE;			// and make flash not scale as it is resized but just extend to cover the new area		}	}	}