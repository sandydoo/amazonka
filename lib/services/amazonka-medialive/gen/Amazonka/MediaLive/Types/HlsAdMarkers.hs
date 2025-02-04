{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.Types.HlsAdMarkers
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsAdMarkers
  ( HlsAdMarkers
      ( ..,
        HlsAdMarkers_ADOBE,
        HlsAdMarkers_ELEMENTAL,
        HlsAdMarkers_ELEMENTAL_SCTE35
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Hls Ad Markers
newtype HlsAdMarkers = HlsAdMarkers'
  { fromHlsAdMarkers ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern HlsAdMarkers_ADOBE :: HlsAdMarkers
pattern HlsAdMarkers_ADOBE = HlsAdMarkers' "ADOBE"

pattern HlsAdMarkers_ELEMENTAL :: HlsAdMarkers
pattern HlsAdMarkers_ELEMENTAL = HlsAdMarkers' "ELEMENTAL"

pattern HlsAdMarkers_ELEMENTAL_SCTE35 :: HlsAdMarkers
pattern HlsAdMarkers_ELEMENTAL_SCTE35 = HlsAdMarkers' "ELEMENTAL_SCTE35"

{-# COMPLETE
  HlsAdMarkers_ADOBE,
  HlsAdMarkers_ELEMENTAL,
  HlsAdMarkers_ELEMENTAL_SCTE35,
  HlsAdMarkers'
  #-}
