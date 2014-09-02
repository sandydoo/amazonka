{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TemplateHaskell             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.Redshift.V2012_12_01.DescribeEventSubscriptions
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Lists descriptions of all the Amazon Redshift event notifications
-- subscription for a customer account. If you specify a subscription name,
-- lists the description for that subscription.
module Network.AWS.Redshift.V2012_12_01.DescribeEventSubscriptions where

import Network.AWS.Request.Query
import Network.AWS.Redshift.V2012_12_01.Types
import Network.AWS.Prelude

-- | Minimum specification for a 'DescribeEventSubscriptions' request.
describeEventSubscriptions :: DescribeEventSubscriptions
describeEventSubscriptions = DescribeEventSubscriptions
    { _desnMaxRecords = Nothing
    , _desnMarker = Nothing
    , _desnSubscriptionName = Nothing
    }

data DescribeEventSubscriptions = DescribeEventSubscriptions
    { _desnMaxRecords :: Maybe Integer
      -- ^ The maximum number of response records to return in each call. If
      -- the number of remaining response records exceeds the specified
      -- MaxRecords value, a value is returned in a marker field of the
      -- response. You can retrieve the next set of records by retrying
      -- the command with the returned marker value. Default: 100
      -- Constraints: minimum 20, maximum 100.
    , _desnMarker :: Maybe Text
      -- ^ An optional parameter that specifies the starting point to return
      -- a set of response records. When the results of a
      -- DescribeEventSubscriptions request exceed the value specified in
      -- MaxRecords, AWS returns a value in the Marker field of the
      -- response. You can retrieve the next set of response records by
      -- providing the returned marker value in the Marker parameter and
      -- retrying the request.
    , _desnSubscriptionName :: Maybe Text
      -- ^ The name of the Amazon Redshift event notification subscription
      -- to be described.
    } deriving (Show, Generic)

makeLenses ''DescribeEventSubscriptions

instance ToQuery DescribeEventSubscriptions where
    toQuery = genericQuery def

data DescribeEventSubscriptionsResponse = DescribeEventSubscriptionsResponse
    { _esmEventSubscriptionsList :: [EventSubscription]
      -- ^ A list of event subscriptions.
    , _esmMarker :: Maybe Text
      -- ^ A value that indicates the starting point for the next set of
      -- response records in a subsequent request. If a value is returned
      -- in a response, you can retrieve the next set of records by
      -- providing this returned marker value in the Marker parameter and
      -- retrying the command. If the Marker field is empty, all response
      -- records have been retrieved for the request.
    } deriving (Show, Generic)

makeLenses ''DescribeEventSubscriptionsResponse

instance FromXML DescribeEventSubscriptionsResponse where
    fromXMLOptions = xmlOptions

instance AWSRequest DescribeEventSubscriptions where
    type Sv DescribeEventSubscriptions = Redshift
    type Rs DescribeEventSubscriptions = DescribeEventSubscriptionsResponse

    request = post "DescribeEventSubscriptions"
    response _ = xmlResponse

instance AWSPager DescribeEventSubscriptions where
    next rq rs = (\x -> rq { _desnMarker = Just x })
        <$> (_esmMarker rs)
