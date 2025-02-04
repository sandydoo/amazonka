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
-- Module      : Amazonka.Pinpoint.Types.JobStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatus_COMPLETED,
        JobStatus_COMPLETING,
        JobStatus_CREATED,
        JobStatus_FAILED,
        JobStatus_FAILING,
        JobStatus_INITIALIZING,
        JobStatus_PENDING_JOB,
        JobStatus_PREPARING_FOR_INITIALIZATION,
        JobStatus_PROCESSING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype JobStatus = JobStatus'
  { fromJobStatus ::
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

pattern JobStatus_COMPLETED :: JobStatus
pattern JobStatus_COMPLETED = JobStatus' "COMPLETED"

pattern JobStatus_COMPLETING :: JobStatus
pattern JobStatus_COMPLETING = JobStatus' "COMPLETING"

pattern JobStatus_CREATED :: JobStatus
pattern JobStatus_CREATED = JobStatus' "CREATED"

pattern JobStatus_FAILED :: JobStatus
pattern JobStatus_FAILED = JobStatus' "FAILED"

pattern JobStatus_FAILING :: JobStatus
pattern JobStatus_FAILING = JobStatus' "FAILING"

pattern JobStatus_INITIALIZING :: JobStatus
pattern JobStatus_INITIALIZING = JobStatus' "INITIALIZING"

pattern JobStatus_PENDING_JOB :: JobStatus
pattern JobStatus_PENDING_JOB = JobStatus' "PENDING_JOB"

pattern JobStatus_PREPARING_FOR_INITIALIZATION :: JobStatus
pattern JobStatus_PREPARING_FOR_INITIALIZATION = JobStatus' "PREPARING_FOR_INITIALIZATION"

pattern JobStatus_PROCESSING :: JobStatus
pattern JobStatus_PROCESSING = JobStatus' "PROCESSING"

{-# COMPLETE
  JobStatus_COMPLETED,
  JobStatus_COMPLETING,
  JobStatus_CREATED,
  JobStatus_FAILED,
  JobStatus_FAILING,
  JobStatus_INITIALIZING,
  JobStatus_PENDING_JOB,
  JobStatus_PREPARING_FOR_INITIALIZATION,
  JobStatus_PROCESSING,
  JobStatus'
  #-}
