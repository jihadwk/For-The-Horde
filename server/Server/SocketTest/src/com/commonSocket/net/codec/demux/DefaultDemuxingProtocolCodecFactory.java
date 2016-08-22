package com.commonSocket.net.codec.demux;

import com.commonSocket.net.util.Report;
import com.google.protobuf.Message;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.mina.filter.codec.demux.DemuxingProtocolCodecFactory;

public class DefaultDemuxingProtocolCodecFactory extends DemuxingProtocolCodecFactory
{
  public DefaultDemuxingProtocolCodecFactory()
  {
//	new Report();
    super.addMessageDecoder(DefaultMessageDecoder.class);
    super.addMessageEncoder(getMessageTypes(), DefaultMessageEncoder.class);
  }
//  Class<?>它是个通配泛型，?可以代表任何类型
  public Set<Class<?>> getMessageTypes()
  {
    Set set = new HashSet();
    set.add(Message.class);
//    返回指定set的不可修改视图,结果集不能再被修改
    return Collections.unmodifiableSet(set);
  }
}